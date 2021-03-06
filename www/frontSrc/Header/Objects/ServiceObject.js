import React from 'react'
import Button from '@material-ui/core/Button'
import { withStyles } from '@material-ui/core/styles'
import numeral from 'numeral'
import Popover from '@material-ui/core/Popover'
import Typography from '@material-ui/core/Typography'
import ServiceIcon from "../Icons/ServiceIcon"

const styles = theme => ({
  root: {
    fontFamily: theme.font.openSans,
    marginLeft: 26,
  },
  status: {
    margin: '4px',
    color: '#fff',
    width: 38,
    height: 38,
    '& span': {
      fontSize: 16
    },
  },
  okStatus: {
    margin: '10px 4px',
    width: 46,
    height: 46,
    backgroundColor: theme.palette.primary.main,
    '&:hover': {
      backgroundColor: theme.palette.primary.light,
    },
    '& span': {
      fontSize: 16,
      color: '#fff',
      fontWeight: '600'
    },
  },
  errorStatus: {
    margin: '10px 4px',
    width: 46,
    height: 46,
    backgroundColor: theme.palette.error.main,
    '&:hover': {
      backgroundColor: theme.palette.error.light,
    },
    '& span': {
      fontSize: 16,
      color: '#fff',
      fontWeight: '600'
    },
  },
  warningStatus: {
    margin: '10px 4px',
    color: '#fff',
    width: 40,
    height: 40,
    '& span': {
      fontSize: 16,
      fontWeight: '600'
    },
    backgroundColor: theme.palette.warning.main,
    '&:hover': {
      backgroundColor: theme.palette.warning.light,
    },
  },
  unknownStatus: {
    margin: '10px 4px',
    color: '#fff',
    width: 40,
    height: 40,
    '& span': {
      fontSize: 15,
      fontWeight: '600'
    },
    backgroundColor: theme.palette.unknown.main,
    '&:hover': {
      backgroundColor: theme.palette.unknown.dark,
    },
  },
  chip: {
    height: '8px',
    width: '8px',
    borderRadius: 20,
    display: 'inline-table',
    marginRight: 6,
  },
  pendingStatus: {
    height: '12px',
    width: '12px',
    position: 'absolute',
    top: 38,
    left: 6,
    borderRadius: 20,
    border: '2px solid #E6E6E7',
    backgroundColor: theme.palette.pending.main
  },
  icon: {
    width: 34,
    height: 34,
    display: 'inline-flex',
    verticalAlign: 'middle',
    margin: '6px',
    color: '#A7A9AC',
    cursor: 'pointer',
    '&:hover': {
      color: '#D1D2D4',
    }
  },
  link: {
    color: 'rgba(0, 0, 0, 0.87)',
    '&:hover': {
      color: '#09225C'
    },
    '&:visited': {
      color: 'rgba(0, 0, 0, 0.87)'
    },
    '&:active': {
      color: 'rgba(0, 0, 0, 0.87)'
    }
  },
  paper: {
    padding: theme.spacing.unit,
  },
  popover: {
    pointerEvents: 'none',
  },
  objectDetails: {
    padding: '10px 16px',
    '&:first-child' : {
      borderBottom: '1px solid #d1d2d4',
    }
  },
  total: {
    float: 'right',
    marginLeft: 34,
  },
})

const ServiceObject = ({
    classes, object, anchorEl, open, handleClose, handleOpen,
    critical, warning, unknown, ok, pending, total, url
}) => (
  <div className={classes.root}>
      <ServiceIcon
        id='serviceIcon'
        viewBox="284 -284 600 600"
        className={classes.icon}
        aria-haspopup="true"
        aria-label='Services status'
        onClick={handleOpen}
      />
    { pending.total > 0 ? <span className={classes.pendingStatus} ></span> : '' }
    { critical.unhandled == 0 && warning.unhandled == 0 && unknown.unhandled == 0 ?
      <Button variant="fab" href={ok.url}
              aria-label='Ok services'
              className={(classes.status, classes.okStatus)}>
        {numeral(ok.total).format('0a')}
      </Button> :
      <Button variant="fab" href={critical.url}
              aria-label='Critical services'
              className={(classes.status, classes.errorStatus)}>
        {numeral(critical.unhandled).format('0a')}
      </Button>
    }
      <Button variant="fab" mini  href={warning.url}
              aria-label='Warning services'
              className={( classes.status, classes.warningStatus)}>
        {numeral(warning.unhandled).format('0a')}
      </Button>
      <Button variant="fab" mini color="primary"  href={unknown.url}
              aria-label='Unknown services'
              className={(classes.status, classes.unknownStatus)}>
        {numeral(unknown.unhandled).format('0a')}
      </Button>
      <Popover
        id='servicePopover'
        open={open}
        anchorEl={anchorEl}
        anchorReference='anchorEl'
        anchorPosition={{ top: 500, left: 400 }}
        onClose={handleClose}
        anchorOrigin={{
          vertical: 'bottom',
          horizontal: 'left',
        }}
        transformOrigin={{
          vertical: 'top',
          horizontal: 'left',
        }}
      >
        <div className={classes.objectDetails}>
          <Typography variant="body1" gutterBottom>
            <a href={url} title="all services list" className={classes.link}>
              All services
              <span className={classes.total}>{total}</span>
            </a>
          </Typography>
        </div>
        <div className={classes.objectDetails}>
          <Typography variant="body1" gutterBottom>
            <span className={classes.chip} style={{backgroundColor: '#e00b3d'}}></span>
            <a href={critical.url} title="services critical list" className={classes.link}>
              Critical services
              <span className={classes.total}>{critical.unhandled}/{critical.total}</span>
            </a>
          </Typography>
        </div>
        <div className={classes.objectDetails}>
          <Typography variant="body1" gutterBottom>
            <span className={classes.chip} style={{backgroundColor: '#FF9A13'}}></span>
            <a href={warning.url} title="services warning list" className={classes.link}>
              Warning services
              <span className={classes.total}>{warning.unhandled}/{warning.total}</span>
            </a>
          </Typography>
        </div>
        <div className={classes.objectDetails}>
          <Typography variant="body1" gutterBottom>
            <span className={classes.chip} style={{backgroundColor: '#bcbdc0'}}></span>
            <a href={unknown.url} title="services unknown list" className={classes.link}>
              Unknown services
              <span className={classes.total}> {unknown.unhandled}/{unknown.total}</span>
            </a>
          </Typography>
        </div>
        <div className={classes.objectDetails}>
          <Typography variant="body1" gutterBottom>
            <span className={classes.chip} style={{backgroundColor: '#88b917'}}></span>
            <a href={ok.url} title="services ok list" className={classes.link}>
              Ok services
              <span className={classes.total}>{ok.total}</span>
            </a>
          </Typography>
        </div>
        {pending.total > 0 ?
          <div className={classes.objectDetails}>
            <Typography variant="body1" gutterBottom>
              <span className={classes.chip} style={{backgroundColor: '#2AD1D4'}}></span>
              <a href={pending.url} title="pending services list" className={classes.link}>
                {pending.total} Pending services
              </a>
            </Typography>
          </div> : ''
        }
      </Popover>
  </div>
)

export default withStyles(styles)(ServiceObject)
