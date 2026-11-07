.class public final Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;
.super Ljava/lang/Object;
.source "ExperimentalOptions.java"


# static fields
.field private static final blacklist ASYNC_DNS:Ljava/lang/String; = "AsyncDNS"

.field private static final blacklist QUIC:Ljava/lang/String; = "QUIC"

.field private static final blacklist STALE_DNS:Ljava/lang/String; = "StaleDNS"

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSET_INT_VALUE:I = -0x1

.field public static final blacklist VALID_CONNECTION_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mJson:Lorg/json/JSONObject;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 19
    const-class v0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    .line 270
    const/16 v0, 0xe4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CHLO"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SHLO"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SCFG"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "REJ"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "CETV"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "PRST"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "SCUP"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ALPN"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "P256"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "C255"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "AESG"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "CC20"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "QBIC"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "AFCW"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "IFW5"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "IFW6"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "IFW7"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "IFW8"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "IFW9"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "IFWA"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "TBBR"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "1RTT"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "2RTT"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "LRTT"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "BBS1"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "BBS2"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "BBS3"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "BBS4"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "BBS5"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "BBRR"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "BBR1"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "BBR2"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "BBR3"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "BBR4"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "BBR5"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "BBR9"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "BBRA"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "BBRB"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "BBRS"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "BBQ1"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "BBQ2"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "BBQ3"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "BBQ5"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "BBQ6"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "BBQ7"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "BBQ8"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "BBQ9"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "BBQ0"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "RENO"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "TPCC"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "BYTE"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "IW03"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "IW10"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "IW20"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "IW50"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "B2ON"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "B2NA"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "B2NE"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "B2RP"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "B2LO"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "B2HR"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "B2SL"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "B2H2"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "B2RC"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "BSAO"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "B2DL"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "B201"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "B202"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "B203"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "B204"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "B205"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "B206"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "B207"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "NTLP"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "1TLP"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "1RTO"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "NRTO"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "TIME"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "ATIM"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "MIN1"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "MIN4"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "MAD0"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "MAD2"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "MAD3"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "1ACK"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "AKD3"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "AKDU"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "AFFE"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "AFF1"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "AFF2"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "SSLR"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "NPRR"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "2RTO"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "3RTO"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "4RTO"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "5RTO"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "6RTO"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "CBHD"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "NBHD"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "CONH"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "LFAK"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "STMP"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "EACK"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "ILD0"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "ILD1"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "ILD2"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "ILD3"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "ILD4"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "RUNT"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "NSTP"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "NRTT"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "1PTO"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "2PTO"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "6PTO"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "7PTO"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "8PTO"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "PTOS"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "PTOA"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "PEB1"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "PEB2"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "PVS1"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "PAG1"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "PAG2"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "PSDA"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "PLE1"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "PLE2"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "APTO"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "ELDT"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "RVCM"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "TCID"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "MPTH"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "NCMR"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "DFER"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "NPCO"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "BWRE"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "BWMX"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "BWID"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "BWI1"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "BWRS"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "BWS2"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "BWS3"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "BWS4"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "BWS5"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "BWS6"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "BWP0"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "BWP1"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "BWP2"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "BWP3"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "BWP4"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "BWG4"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "BWG7"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "BWG8"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "BWS7"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "BWM3"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "BWM4"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "ICW1"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "DTOS"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "FIDT"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "3AFF"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "10AF"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "MTUH"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "MTUL"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "NSLC"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "NCHP"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "NBPE"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "X509"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "X59R"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "CHID"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "VER "

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "NONC"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "NONP"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "KEXS"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "AEAD"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "COPT"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "CLOP"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "ICSL"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "MIBS"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "MIUS"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "ADE "

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "IRTT"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "TRTT"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "SNI "

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "PUBS"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "SCID"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "ORBT"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "PDMD"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "PROF"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "CCRT"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "EXPY"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "STTL"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "SFCW"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "CFCW"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "UAID"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "XLCT"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "QLVE"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "PDP1"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "PDP2"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "PDP3"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "PDP5"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "QNZ2"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "MAD"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "IGNP"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "SRWP"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "ROWF"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "ROWR"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "GSR0"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "GSR1"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "GSR2"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "GSR3"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "NRES"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "INVC"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "GWCH"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "YTCH"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "ACH0"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "RREJ"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "CADR"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "ASAD"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "SRST"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "CIDK"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "CIDS"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "RNON"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "RSEQ"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "PAD "

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "EPID"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "SNO0"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "STK0"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "CRT255"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "CSCT"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    .line 271
    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    .line 270
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "experimentalOptions"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    .line 32
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 34
    :try_start_10
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 44
    goto :goto_3b

    .line 35
    :catch_1e
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 37
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 39
    const-string v3, "Experimental options could not be parsed, using default values. Error: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private blacklist getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .param p1, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 230
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 231
    return-object p2

    .line 234
    :cond_9
    move-object v0, p2

    .line 236
    .local v0, "value":Ljava/lang/Object;, "TT;"
    :try_start_a
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14} :catch_16
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_14} :catch_16

    move-object v0, v1

    .line 241
    goto :goto_33

    .line 237
    :catch_16
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 239
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Failed to get %s options: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_33
    :goto_33
    return-object v0
.end method

.method private blacklist getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p1, "experimentalOptionFieldTrialName"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 196
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Failed to get %s options: %s"

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 197
    return-object p3

    .line 201
    :cond_b
    const/4 v1, 0x0

    .line 203
    .local v1, "options":Lorg/json/JSONObject;
    const/4 v2, 0x2

    :try_start_d
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_13} :catch_15

    move-object v1, v3

    .line 212
    goto :goto_2f

    .line 204
    :catch_15
    move-exception v3

    .line 205
    .local v3, "e":Lorg/json/JSONException;
    sget-object v4, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 206
    sget-object v4, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    .line 210
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 208
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_2f
    :goto_2f
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_38

    goto :goto_5e

    .line 218
    :cond_38
    move-object v3, p3

    .line 220
    .local v3, "value":Ljava/lang/Object;, "TT;"
    :try_start_39
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_41} :catch_43
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_41} :catch_43

    move-object v3, v0

    .line 225
    goto :goto_5d

    .line 221
    :catch_43
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 223
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {p2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    return-object v3

    .line 215
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_5e
    :goto_5e
    return-object p3
.end method

.method private blacklist isNullOrEmpty(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 265
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private blacklist parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "str"    # Ljava/lang/String;

    .line 250
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    return-object p1

    .line 254
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "nStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, -0x1

    const-string v2, ","

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_31

    aget-object v5, v1, v4

    .line 256
    .local v5, "s":Ljava/lang/String;
    sget-object v6, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->VALID_CONNECTION_OPTIONS:Ljava/util/Set;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v5    # "s":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 261
    :cond_31
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getAllowPortMigration()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 115
    const-class v0, Ljava/lang/Boolean;

    .line 116
    const-string v1, "QUIC"

    const-string v2, "allow_port_migration"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAsyncDnsEnableOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 133
    const/4 v0, 0x0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "AsyncDNS"

    const-string v3, "enable"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCloseSessionsOnIpChangeOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 75
    const-class v0, Ljava/lang/Boolean;

    .line 76
    const-string v1, "QUIC"

    const-string v2, "close_sessions_on_ip_change"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 75
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConnectionOptionsOption()Ljava/lang/String;
    .registers 5

    .line 49
    const-class v0, Ljava/lang/String;

    .line 50
    const-string v1, "QUIC"

    const-string v2, "connection_options"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->parseExperimentalOptionsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisableBidirectionalStreamsOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 90
    const-class v0, Ljava/lang/Boolean;

    .line 91
    const-string v1, "QUIC"

    const-string v2, "disable_bidirectional_streams"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 90
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisableIpv6OnWifiOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 4

    .line 175
    const-class v0, Ljava/lang/Boolean;

    .line 176
    const-string v1, "disable_ipv6_on_wifi"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 175
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnableSocketRecvOptimizationOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 110
    const-class v0, Ljava/lang/Boolean;

    .line 111
    const-string v1, "QUIC"

    const-string v2, "enable_socket_recv_optimization"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 110
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getGoawaySessionsOnIpChangeOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 70
    const-class v0, Ljava/lang/Boolean;

    .line 71
    const-string v1, "QUIC"

    const-string v2, "goaway_sessions_on_ip_change"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHostWhitelist()Ljava/lang/String;
    .registers 5

    .line 125
    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "host_whitelist"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIdleConnectionTimeoutSecondsOption()I
    .registers 5

    .line 65
    nop

    .line 66
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 65
    const-string v2, "QUIC"

    const-string v3, "idle_connection_timeout_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxIdleTimeBeforeCryptoHandshakeSecondsOption()I
    .registers 5

    .line 102
    nop

    .line 105
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 102
    const-string v2, "QUIC"

    const-string v3, "max_idle_time_before_crypto_handshake_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxServerConfigsStoredInPropertiesOption()I
    .registers 5

    .line 59
    nop

    .line 60
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 59
    const-string v2, "QUIC"

    const-string v3, "max_server_configs_stored_in_properties"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMaxTimeBeforeCryptoHandshakeSecondsOption()I
    .registers 5

    .line 96
    nop

    .line 97
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    .line 96
    const-string v2, "QUIC"

    const-string v3, "max_time_before_crypto_handshake_seconds"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getMigrateSessionsEarlyV2()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 85
    const-class v0, Ljava/lang/Boolean;

    .line 86
    const-string v1, "QUIC"

    const-string v2, "migrate_sessions_early_v2"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 85
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMigrateSessionsOnNetworkChangeV2Option()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 80
    const-class v0, Ljava/lang/Boolean;

    .line 81
    const-string v1, "QUIC"

    const-string v2, "migrate_sessions_on_network_change_v2"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 80
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRaceStaleDnsOnConnection()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 120
    const-class v0, Ljava/lang/Boolean;

    .line 121
    const-string v1, "QUIC"

    const-string v2, "race_stale_dns_on_connection"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 120
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStaleDnsAllowOtherNetworkOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 155
    const-class v0, Ljava/lang/Boolean;

    .line 156
    const-string v1, "StaleDNS"

    const-string v2, "allow_other_network"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 155
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStaleDnsDelayMillisOption()I
    .registers 5

    .line 142
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "delay_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getStaleDnsEnableOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 137
    const/4 v0, 0x0

    const-class v1, Ljava/lang/Boolean;

    const-string v2, "StaleDNS"

    const-string v3, "enable"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStaleDnsMaxExpiredTimeMillisOption()I
    .registers 5

    .line 147
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_expired_time_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getStaleDnsMaxStaleUsesOption()I
    .registers 5

    .line 151
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "max_stale_uses"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getStaleDnsPersistDelayMillisOption()I
    .registers 5

    .line 166
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    const-string v2, "StaleDNS"

    const-string v3, "persist_delay_ms"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getStaleDnsPersistToDiskOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 160
    const-class v0, Ljava/lang/Boolean;

    .line 161
    const-string v1, "StaleDNS"

    const-string v2, "persist_to_disk"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 160
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStaleDnsUseStaleOnNameNotResolvedOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 170
    const-class v0, Ljava/lang/Boolean;

    .line 171
    const-string v1, "StaleDNS"

    const-string v2, "use_stale_on_name_not_resolved"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 170
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStoreServerConfigsInPropertiesOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;
    .registers 5

    .line 54
    const-class v0, Ljava/lang/Boolean;

    .line 55
    const-string v1, "QUIC"

    const-string v2, "store_server_configs_in_properties"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 54
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserAgentId()Ljava/lang/String;
    .registers 5

    .line 129
    const/4 v0, 0x0

    const-class v1, Ljava/lang/String;

    const-string v2, "QUIC"

    const-string v3, "user_agent_id"

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getOrDefault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
