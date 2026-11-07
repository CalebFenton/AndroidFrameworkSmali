.class public final Landroid/stats/dnsresolver/DnsResolver;
.super Ljava/lang/Object;
.source "DnsResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/stats/dnsresolver/DnsResolver$Server;,
        Landroid/stats/dnsresolver/DnsResolver$Servers;,
        Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvents;,
        Landroid/stats/dnsresolver/DnsResolver$DnsQueryEvent;
    }
.end annotation


# static fields
.field public static final blacklist CS_FOUND:I = 0x2

.field public static final blacklist CS_NOTFOUND:I = 0x1

.field public static final blacklist CS_SKIP:I = 0x3

.field public static final blacklist CS_UNSUPPORTED:I = 0x0

.field public static final blacklist EVENT_GETADDRINFO:I = 0x1

.field public static final blacklist EVENT_GETHOSTBYADDR:I = 0x3

.field public static final blacklist EVENT_GETHOSTBYNAME:I = 0x2

.field public static final blacklist EVENT_RES_NSEND:I = 0x4

.field public static final blacklist EVENT_UNKNOWN:I = 0x0

.field public static final blacklist HC_RECONNECT_AFTER_IDLE:I = 0x2

.field public static final blacklist HC_RETRY_AFTER_ERROR:I = 0x3

.field public static final blacklist HC_SERVER_PROBE:I = 0x1

.field public static final blacklist HC_UNKNOWN:I = 0x0

.field public static final blacklist HR_SERVER_UNREACHABLE:I = 0x4

.field public static final blacklist HR_SUCCESS:I = 0x1

.field public static final blacklist HR_TIMEOUT:I = 0x2

.field public static final blacklist HR_TLS_FAIL:I = 0x3

.field public static final blacklist HR_UNKNOWN:I = 0x0

.field public static final blacklist IV_IPV4:I = 0x1

.field public static final blacklist IV_IPV6:I = 0x2

.field public static final blacklist IV_UNKNOWN:I = 0x0

.field public static final blacklist NS_R_BADKEY:I = 0x11

.field public static final blacklist NS_R_BADTIME:I = 0x12

.field public static final blacklist NS_R_BADVERS:I = 0x10

.field public static final blacklist NS_R_FORMERR:I = 0x1

.field public static final blacklist NS_R_INTERNAL_ERROR:I = 0xfe

.field public static final blacklist NS_R_MAX:I = 0xb

.field public static final blacklist NS_R_NOTAUTH:I = 0x9

.field public static final blacklist NS_R_NOTIMPL:I = 0x4

.field public static final blacklist NS_R_NOTZONE:I = 0xa

.field public static final blacklist NS_R_NO_ERROR:I = 0x0

.field public static final blacklist NS_R_NXDOMAIN:I = 0x3

.field public static final blacklist NS_R_NXRRSET:I = 0x8

.field public static final blacklist NS_R_REFUSED:I = 0x5

.field public static final blacklist NS_R_SERVFAIL:I = 0x2

.field public static final blacklist NS_R_TIMEOUT:I = 0xff

.field public static final blacklist NS_R_UNASSIGNED12:I = 0xc

.field public static final blacklist NS_R_UNASSIGNED13:I = 0xd

.field public static final blacklist NS_R_UNASSIGNED14:I = 0xe

.field public static final blacklist NS_R_UNASSIGNED15:I = 0xf

.field public static final blacklist NS_R_YXDOMAIN:I = 0x6

.field public static final blacklist NS_R_YXRRSET:I = 0x7

.field public static final blacklist NS_T_A:I = 0x1

.field public static final blacklist NS_T_A6:I = 0x26

.field public static final blacklist NS_T_AAAA:I = 0x1c

.field public static final blacklist NS_T_AFSDB:I = 0x12

.field public static final blacklist NS_T_ANY:I = 0xff

.field public static final blacklist NS_T_APL:I = 0x2a

.field public static final blacklist NS_T_ATMA:I = 0x22

.field public static final blacklist NS_T_AXFR:I = 0xfc

.field public static final blacklist NS_T_CERT:I = 0x25

.field public static final blacklist NS_T_CNAME:I = 0x5

.field public static final blacklist NS_T_DHCID:I = 0x31

.field public static final blacklist NS_T_DLV:I = 0x8001

.field public static final blacklist NS_T_DNAME:I = 0x27

.field public static final blacklist NS_T_DNSKEY:I = 0x30

.field public static final blacklist NS_T_DS:I = 0x2b

.field public static final blacklist NS_T_EID:I = 0x1f

.field public static final blacklist NS_T_GPOS:I = 0x1b

.field public static final blacklist NS_T_HINFO:I = 0xd

.field public static final blacklist NS_T_HIP:I = 0x37

.field public static final blacklist NS_T_INVALID:I = 0x0

.field public static final blacklist NS_T_IPSECKEY:I = 0x2d

.field public static final blacklist NS_T_ISDN:I = 0x14

.field public static final blacklist NS_T_IXFR:I = 0xfb

.field public static final blacklist NS_T_KEY:I = 0x19

.field public static final blacklist NS_T_KX:I = 0x24

.field public static final blacklist NS_T_LOC:I = 0x1d

.field public static final blacklist NS_T_MAILA:I = 0xfe

.field public static final blacklist NS_T_MAILB:I = 0xfd

.field public static final blacklist NS_T_MAX:I = 0x10000

.field public static final blacklist NS_T_MB:I = 0x7

.field public static final blacklist NS_T_MD:I = 0x3

.field public static final blacklist NS_T_MF:I = 0x4

.field public static final blacklist NS_T_MG:I = 0x8

.field public static final blacklist NS_T_MINFO:I = 0xe

.field public static final blacklist NS_T_MR:I = 0x9

.field public static final blacklist NS_T_MX:I = 0xf

.field public static final blacklist NS_T_NAPTR:I = 0x23

.field public static final blacklist NS_T_NIMLOC:I = 0x20

.field public static final blacklist NS_T_NS:I = 0x2

.field public static final blacklist NS_T_NSAP:I = 0x16

.field public static final blacklist NS_T_NSAP_PTR:I = 0x17

.field public static final blacklist NS_T_NSEC:I = 0x2f

.field public static final blacklist NS_T_NSEC3:I = 0x32

.field public static final blacklist NS_T_NSEC3PARAM:I = 0x33

.field public static final blacklist NS_T_NULL:I = 0xa

.field public static final blacklist NS_T_NXT:I = 0x1e

.field public static final blacklist NS_T_OPT:I = 0x29

.field public static final blacklist NS_T_PTR:I = 0xc

.field public static final blacklist NS_T_PX:I = 0x1a

.field public static final blacklist NS_T_RP:I = 0x11

.field public static final blacklist NS_T_RRSIG:I = 0x2e

.field public static final blacklist NS_T_RT:I = 0x15

.field public static final blacklist NS_T_SIG:I = 0x18

.field public static final blacklist NS_T_SINK:I = 0x28

.field public static final blacklist NS_T_SOA:I = 0x6

.field public static final blacklist NS_T_SPF:I = 0x63

.field public static final blacklist NS_T_SRV:I = 0x21

.field public static final blacklist NS_T_SSHFP:I = 0x2c

.field public static final blacklist NS_T_TKEY:I = 0xf9

.field public static final blacklist NS_T_TSIG:I = 0xfa

.field public static final blacklist NS_T_TXT:I = 0x10

.field public static final blacklist NS_T_WKS:I = 0xb

.field public static final blacklist NS_T_X25:I = 0x13

.field public static final blacklist NS_T_ZXFR:I = 0x100

.field public static final blacklist NT_BLUETOOTH:I = 0x3

.field public static final blacklist NT_BLUETOOTH_VPN:I = 0xa

.field public static final blacklist NT_CELLULAR:I = 0x1

.field public static final blacklist NT_CELLULAR_VPN:I = 0x8

.field public static final blacklist NT_ETHERNET:I = 0x4

.field public static final blacklist NT_ETHERNET_VPN:I = 0xb

.field public static final blacklist NT_LOWPAN:I = 0x7

.field public static final blacklist NT_SATELLITE:I = 0xd

.field public static final blacklist NT_UNKNOWN:I = 0x0

.field public static final blacklist NT_VPN:I = 0x5

.field public static final blacklist NT_WIFI:I = 0x2

.field public static final blacklist NT_WIFI_AWARE:I = 0x6

.field public static final blacklist NT_WIFI_CELLULAR_VPN:I = 0xc

.field public static final blacklist NT_WIFI_VPN:I = 0x9

.field public static final blacklist PDM_OFF:I = 0x1

.field public static final blacklist PDM_OPPORTUNISTIC:I = 0x2

.field public static final blacklist PDM_STRICT:I = 0x3

.field public static final blacklist PDM_UNKNOWN:I = 0x0

.field public static final blacklist PROTO_DOH:I = 0x4

.field public static final blacklist PROTO_DOT:I = 0x3

.field public static final blacklist PROTO_MDNS:I = 0x5

.field public static final blacklist PROTO_TCP:I = 0x2

.field public static final blacklist PROTO_UDP:I = 0x1

.field public static final blacklist PROTO_UNKNOWN:I = 0x0

.field public static final blacklist RC_EAI_ADDRFAMILY:I = 0x1

.field public static final blacklist RC_EAI_AGAIN:I = 0x2

.field public static final blacklist RC_EAI_BADFLAGS:I = 0x3

.field public static final blacklist RC_EAI_BADHINTS:I = 0xc

.field public static final blacklist RC_EAI_FAIL:I = 0x4

.field public static final blacklist RC_EAI_FAMILY:I = 0x5

.field public static final blacklist RC_EAI_MAX:I = 0x100

.field public static final blacklist RC_EAI_MEMORY:I = 0x6

.field public static final blacklist RC_EAI_NODATA:I = 0x7

.field public static final blacklist RC_EAI_NONAME:I = 0x8

.field public static final blacklist RC_EAI_NO_ERROR:I = 0x0

.field public static final blacklist RC_EAI_OVERFLOW:I = 0xe

.field public static final blacklist RC_EAI_PROTOCOL:I = 0xd

.field public static final blacklist RC_EAI_SERVICE:I = 0x9

.field public static final blacklist RC_EAI_SOCKTYPE:I = 0xa

.field public static final blacklist RC_EAI_SYSTEM:I = 0xb

.field public static final blacklist RC_RESOLV_INTERNAL_ERROR:I = 0xfe

.field public static final blacklist RC_RESOLV_TIMEOUT:I = 0xff

.field public static final blacklist SYS_E2BIG:I = 0x7

.field public static final blacklist SYS_EACCES:I = 0xd

.field public static final blacklist SYS_EADDRINUSE:I = 0x62

.field public static final blacklist SYS_EADDRNOTAVAIL:I = 0x63

.field public static final blacklist SYS_EADV:I = 0x44

.field public static final blacklist SYS_EAFNOSUPPORT:I = 0x61

.field public static final blacklist SYS_EAGAIN:I = 0xb

.field public static final blacklist SYS_EALREADY:I = 0x72

.field public static final blacklist SYS_EBADE:I = 0x34

.field public static final blacklist SYS_EBADF:I = 0x9

.field public static final blacklist SYS_EBADFD:I = 0x4d

.field public static final blacklist SYS_EBADMSG:I = 0x4a

.field public static final blacklist SYS_EBADR:I = 0x35

.field public static final blacklist SYS_EBADRQC:I = 0x38

.field public static final blacklist SYS_EBADSLT:I = 0x39

.field public static final blacklist SYS_EBFONT:I = 0x3b

.field public static final blacklist SYS_EBUSY:I = 0x10

.field public static final blacklist SYS_ECANCELED:I = 0x7d

.field public static final blacklist SYS_ECHILD:I = 0xa

.field public static final blacklist SYS_ECHRNG:I = 0x2c

.field public static final blacklist SYS_ECOMM:I = 0x46

.field public static final blacklist SYS_ECONNABORTED:I = 0x67

.field public static final blacklist SYS_ECONNREFUSED:I = 0x6f

.field public static final blacklist SYS_ECONNRESET:I = 0x68

.field public static final blacklist SYS_EDEADLOCK:I = 0x23

.field public static final blacklist SYS_EDESTADDRREQ:I = 0x59

.field public static final blacklist SYS_EDOM:I = 0x21

.field public static final blacklist SYS_EDOTDOT:I = 0x49

.field public static final blacklist SYS_EDQUOT:I = 0x7a

.field public static final blacklist SYS_EEXIST:I = 0x11

.field public static final blacklist SYS_EFAULT:I = 0xe

.field public static final blacklist SYS_EFBIG:I = 0x1b

.field public static final blacklist SYS_EHOSTDOWN:I = 0x70

.field public static final blacklist SYS_EHOSTUNREACH:I = 0x71

.field public static final blacklist SYS_EHWPOISON:I = 0x85

.field public static final blacklist SYS_EIDRM:I = 0x2b

.field public static final blacklist SYS_EILSEQ:I = 0x54

.field public static final blacklist SYS_EINPROGRESS:I = 0x73

.field public static final blacklist SYS_EINTR:I = 0x4

.field public static final blacklist SYS_EINVAL:I = 0x16

.field public static final blacklist SYS_EIO:I = 0x5

.field public static final blacklist SYS_EISCONN:I = 0x6a

.field public static final blacklist SYS_EISDIR:I = 0x15

.field public static final blacklist SYS_EISNAM:I = 0x78

.field public static final blacklist SYS_EKEYEXPIRED:I = 0x7f

.field public static final blacklist SYS_EKEYREJECTED:I = 0x81

.field public static final blacklist SYS_EKEYREVOKED:I = 0x80

.field public static final blacklist SYS_EL2HLT:I = 0x33

.field public static final blacklist SYS_EL2NSYNC:I = 0x2d

.field public static final blacklist SYS_EL3HLT:I = 0x2e

.field public static final blacklist SYS_EL3RST:I = 0x2f

.field public static final blacklist SYS_ELIBACC:I = 0x4f

.field public static final blacklist SYS_ELIBBAD:I = 0x50

.field public static final blacklist SYS_ELIBEXEC:I = 0x53

.field public static final blacklist SYS_ELIBMAX:I = 0x52

.field public static final blacklist SYS_ELIBSCN:I = 0x51

.field public static final blacklist SYS_ELNRNG:I = 0x30

.field public static final blacklist SYS_ELOOP:I = 0x28

.field public static final blacklist SYS_EMEDIUMTYPE:I = 0x7c

.field public static final blacklist SYS_EMFILE:I = 0x18

.field public static final blacklist SYS_EMLINK:I = 0x1f

.field public static final blacklist SYS_EMSGSIZE:I = 0x5a

.field public static final blacklist SYS_EMULTIHOP:I = 0x48

.field public static final blacklist SYS_ENAMETOOLONG:I = 0x24

.field public static final blacklist SYS_ENAVAIL:I = 0x77

.field public static final blacklist SYS_ENETDOWN:I = 0x64

.field public static final blacklist SYS_ENETRESET:I = 0x66

.field public static final blacklist SYS_ENETUNREACH:I = 0x65

.field public static final blacklist SYS_ENFILE:I = 0x17

.field public static final blacklist SYS_ENOANO:I = 0x37

.field public static final blacklist SYS_ENOBUFS:I = 0x69

.field public static final blacklist SYS_ENOCSI:I = 0x32

.field public static final blacklist SYS_ENODATA:I = 0x3d

.field public static final blacklist SYS_ENODEV:I = 0x13

.field public static final blacklist SYS_ENOENT:I = 0x2

.field public static final blacklist SYS_ENOEXEC:I = 0x8

.field public static final blacklist SYS_ENOKEY:I = 0x7e

.field public static final blacklist SYS_ENOLCK:I = 0x25

.field public static final blacklist SYS_ENOLINK:I = 0x43

.field public static final blacklist SYS_ENOMEDIUM:I = 0x7b

.field public static final blacklist SYS_ENOMEM:I = 0xc

.field public static final blacklist SYS_ENOMSG:I = 0x2a

.field public static final blacklist SYS_ENONET:I = 0x40

.field public static final blacklist SYS_ENOPKG:I = 0x41

.field public static final blacklist SYS_ENOPROTOOPT:I = 0x5c

.field public static final blacklist SYS_ENOSPC:I = 0x1c

.field public static final blacklist SYS_ENOSR:I = 0x3f

.field public static final blacklist SYS_ENOSTR:I = 0x3c

.field public static final blacklist SYS_ENOSYS:I = 0x26

.field public static final blacklist SYS_ENOTBLK:I = 0xf

.field public static final blacklist SYS_ENOTCONN:I = 0x6b

.field public static final blacklist SYS_ENOTDIR:I = 0x14

.field public static final blacklist SYS_ENOTEMPTY:I = 0x27

.field public static final blacklist SYS_ENOTNAM:I = 0x76

.field public static final blacklist SYS_ENOTRECOVERABLE:I = 0x83

.field public static final blacklist SYS_ENOTSOCK:I = 0x58

.field public static final blacklist SYS_ENOTTY:I = 0x19

.field public static final blacklist SYS_ENOTUNIQ:I = 0x4c

.field public static final blacklist SYS_ENXIO:I = 0x6

.field public static final blacklist SYS_EOPNOTSUPP:I = 0x5f

.field public static final blacklist SYS_EOVERFLOW:I = 0x4b

.field public static final blacklist SYS_EOWNERDEAD:I = 0x82

.field public static final blacklist SYS_EPERM:I = 0x1

.field public static final blacklist SYS_EPFNOSUPPORT:I = 0x60

.field public static final blacklist SYS_EPIPE:I = 0x20

.field public static final blacklist SYS_EPROTO:I = 0x47

.field public static final blacklist SYS_EPROTONOSUPPORT:I = 0x5d

.field public static final blacklist SYS_EPROTOTYPE:I = 0x5b

.field public static final blacklist SYS_ERANGE:I = 0x22

.field public static final blacklist SYS_EREMCHG:I = 0x4e

.field public static final blacklist SYS_EREMOTE:I = 0x42

.field public static final blacklist SYS_EREMOTEIO:I = 0x79

.field public static final blacklist SYS_ERESTART:I = 0x55

.field public static final blacklist SYS_ERFKILL:I = 0x84

.field public static final blacklist SYS_EROFS:I = 0x1e

.field public static final blacklist SYS_ESHUTDOWN:I = 0x6c

.field public static final blacklist SYS_ESOCKTNOSUPPORT:I = 0x5e

.field public static final blacklist SYS_ESPIPE:I = 0x1d

.field public static final blacklist SYS_ESRCH:I = 0x3

.field public static final blacklist SYS_ESRMNT:I = 0x45

.field public static final blacklist SYS_ESTALE:I = 0x74

.field public static final blacklist SYS_ESTRPIPE:I = 0x56

.field public static final blacklist SYS_ETIME:I = 0x3e

.field public static final blacklist SYS_ETIMEDOUT:I = 0x6e

.field public static final blacklist SYS_ETOOMANYREFS:I = 0x6d

.field public static final blacklist SYS_ETXTBSY:I = 0x1a

.field public static final blacklist SYS_EUCLEAN:I = 0x75

.field public static final blacklist SYS_EUNATCH:I = 0x31

.field public static final blacklist SYS_EUSERS:I = 0x57

.field public static final blacklist SYS_EXDEV:I = 0x12

.field public static final blacklist SYS_EXFULL:I = 0x36

.field public static final blacklist SYS_NO_ERROR:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
