.class Landroid/webkit/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final blacklist HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final blacklist HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final blacklist HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist MAX_ADDRESS_LINES:I = 0x5

.field private static final blacklist MAX_ADDRESS_WORDS:I = 0xe

.field private static final blacklist MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final blacklist MIN_ADDRESS_WORDS:I = 0x4

.field private static final blacklist NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final blacklist WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final blacklist WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final blacklist kMaxAddressNameWordLength:I = 0x19

.field private static final blacklist sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final blacklist sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final blacklist sStateRe:Ljava/util/regex/Pattern;

.field private static final blacklist sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

.field private static final blacklist sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final blacklist sWordRe:Ljava/util/regex/Pattern;

.field private static final blacklist sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 63
    const/16 v0, 0x3b

    new-array v0, v0, [Landroid/webkit/FindAddress$ZipRange;

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x63

    const/4 v3, -0x1

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x23

    const/16 v6, 0x24

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v6, 0x47

    const/16 v7, 0x48

    invoke-direct {v1, v6, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v6, 0x2

    aput-object v1, v0, v6

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v7, 0x60

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v8, 0x3

    aput-object v1, v0, v8

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v9, 0x55

    const/16 v10, 0x56

    invoke-direct {v1, v9, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v10, 0x5a

    invoke-direct {v1, v10, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v10, 0x5

    aput-object v1, v0, v10

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v11, 0x50

    const/16 v12, 0x51

    invoke-direct {v1, v11, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v11, 0x6

    aput-object v1, v0, v11

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v11, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/4 v12, 0x7

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v12, 0x14

    invoke-direct {v1, v12, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v13, 0x8

    aput-object v1, v0, v13

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v13, 0x13

    invoke-direct {v1, v13, v13, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v14, 0x9

    aput-object v1, v0, v14

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x20

    const/16 v2, 0x22

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x1e

    const/16 v15, 0x1f

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x32

    const/16 v15, 0x34

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x53

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x10

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x3c

    const/16 v2, 0x3e

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x2e

    const/16 v15, 0x2f

    invoke-direct {v1, v2, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x43

    const/16 v15, 0x49

    const/16 v10, 0x42

    invoke-direct {v1, v10, v2, v15, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v13

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x28

    const/16 v10, 0x2a

    invoke-direct {v1, v2, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x46

    const/16 v10, 0x47

    invoke-direct {v1, v2, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v5, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x15

    invoke-direct {v1, v12, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v8, v9, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x19

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x30

    const/16 v10, 0x31

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x1a

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x37

    const/16 v10, 0x38

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1b

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x3f

    const/16 v2, 0x41

    invoke-direct {v1, v15, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x27

    const/16 v12, 0x26

    invoke-direct {v1, v12, v15, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1e

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v5, v10, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x1f

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x1b

    move/from16 v16, v5

    const/16 v5, 0x1c

    invoke-direct {v1, v15, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x20

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x3a

    invoke-direct {v1, v5, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v15, 0x21

    aput-object v1, v0, v15

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v15, 0x44

    move/from16 v17, v5

    const/16 v5, 0x45

    invoke-direct {v1, v15, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x22

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v8, v9, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x23

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/4 v5, 0x7

    const/16 v8, 0x8

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x24

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x56

    const/16 v8, 0x57

    const/16 v9, 0x58

    invoke-direct {v1, v8, v9, v5, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x25

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x59

    invoke-direct {v1, v9, v5, v7, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v12

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0xa

    const/16 v8, 0xe

    invoke-direct {v1, v5, v8, v4, v11}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x27

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x2b

    const/16 v8, 0x2d

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x28

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x49

    const/16 v8, 0x4a

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x29

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0x61

    const/16 v8, 0x61

    invoke-direct {v1, v5, v8, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x2a

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v5, 0xf

    invoke-direct {v1, v5, v13, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v5, 0x2b

    aput-object v1, v0, v5

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v11, v4, v14}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2c

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v7, v7, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2d

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v6, v6, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x2e

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x39

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x30

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x25

    invoke-direct {v1, v4, v12, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x31

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x4f

    const/16 v5, 0x57

    const/16 v7, 0x4b

    invoke-direct {v1, v7, v4, v5, v9}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x32

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x54

    const/16 v5, 0x54

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x33

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x16

    const/16 v5, 0x14

    const/16 v7, 0x18

    invoke-direct {v1, v4, v7, v5, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x34

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    invoke-direct {v1, v11, v14, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x35

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/4 v4, 0x5

    invoke-direct {v1, v4, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    const/16 v4, 0x36

    aput-object v1, v0, v4

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x62

    const/16 v5, 0x63

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v16

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x35

    const/16 v5, 0x36

    invoke-direct {v1, v4, v5, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v10

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v4, 0x1a

    const/16 v7, 0x18

    invoke-direct {v1, v7, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v2

    new-instance v1, Landroid/webkit/FindAddress$ZipRange;

    const/16 v2, 0x52

    const/16 v4, 0x53

    invoke-direct {v1, v2, v4, v3, v3}, Landroid/webkit/FindAddress$ZipRange;-><init>(IIII)V

    aput-object v1, v0, v17

    sput-object v0, Landroid/webkit/FindAddress;->sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

    .line 143
    nop

    .line 144
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    .line 161
    nop

    .line 162
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    .line 166
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    .line 229
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    .line 255
    nop

    .line 256
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    .line 258
    nop

    .line 259
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    .line 258
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .registers 15
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "houseNumberMatch"    # Ljava/util/regex/MatchResult;

    .line 364
    const/4 v0, -0x1

    .line 365
    .local v0, "restartPos":I
    const/4 v1, -0x1

    .line 366
    .local v1, "nonZipMatch":I
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    .line 367
    .local v2, "it":I
    const/4 v3, 0x1

    .line 368
    .local v3, "numLines":I
    const/4 v4, 0x1

    .line 369
    .local v4, "consecutiveHouseNumbers":Z
    const/4 v5, 0x0

    .line 370
    .local v5, "foundLocationName":Z
    const/4 v6, 0x1

    .line 371
    .local v6, "wordCount":I
    const-string v7, ""

    .line 373
    .local v7, "lastWord":Ljava/lang/String;
    sget-object v8, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 375
    .local v8, "matcher":Ljava/util/regex/Matcher;
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_d6

    .line 376
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v9

    if-nez v9, :cond_24

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    neg-int v9, v9

    return v9

    .line 380
    :cond_24
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    sub-int/2addr v9, v10

    const/16 v10, 0x19

    if-le v9, v10, :cond_37

    .line 382
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    neg-int v9, v9

    return v9

    .line 386
    :cond_37
    :goto_37
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    const/4 v10, -0x1

    if-ge v2, v9, :cond_50

    .line 387
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "it":I
    .local v9, "it":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v11, "\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v10, :cond_4e

    add-int/lit8 v3, v3, 0x1

    :cond_4e
    move v2, v9

    goto :goto_37

    .line 391
    .end local v9    # "it":I
    .restart local v2    # "it":I
    :cond_50
    const/4 v9, 0x5

    if-le v3, v9, :cond_55

    goto/16 :goto_d6

    .line 394
    :cond_55
    add-int/lit8 v6, v6, 0x1

    const/16 v11, 0xe

    if-le v6, v11, :cond_5d

    goto/16 :goto_d6

    .line 396
    :cond_5d
    invoke-static {p0, v2}, Landroid/webkit/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_6f

    .line 397
    if-eqz v4, :cond_6b

    const/4 v9, 0x1

    if-le v3, v9, :cond_6b

    .line 400
    neg-int v9, v2

    return v9

    .line 403
    :cond_6b
    if-ne v0, v10, :cond_cc

    move v0, v2

    goto :goto_cc

    .line 407
    :cond_6f
    const/4 v4, 0x0

    .line 409
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 410
    const/4 v5, 0x1

    .line 411
    goto :goto_cc

    .line 414
    :cond_7c
    if-ne v6, v9, :cond_85

    if-nez v5, :cond_85

    .line 416
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 417
    goto :goto_d6

    .line 420
    :cond_85
    if-eqz v5, :cond_cc

    const/4 v9, 0x4

    if-le v6, v9, :cond_cc

    .line 422
    invoke-static {p0, v2}, Landroid/webkit/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v9

    .line 423
    .local v9, "stateMatch":Ljava/util/regex/MatchResult;
    if-eqz v9, :cond_cc

    .line 424
    const-string v10, "et"

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    invoke-interface {v9, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "al"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 426
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    .line 427
    goto :goto_d6

    .line 431
    :cond_a9
    sget-object v10, Landroid/webkit/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 432
    .local v10, "zipMatcher":Ljava/util/regex/Matcher;
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 433
    invoke-virtual {v10, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Landroid/webkit/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    move-result v11

    if-eqz v11, :cond_cc

    .line 434
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v11

    return v11

    .line 445
    :cond_c8
    invoke-interface {v9}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    .line 375
    .end local v9    # "stateMatch":Ljava/util/regex/MatchResult;
    .end local v10    # "zipMatcher":Ljava/util/regex/Matcher;
    :cond_cc
    :goto_cc
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto/16 :goto_12

    .line 451
    :cond_d6
    :goto_d6
    if-lez v1, :cond_d9

    return v1

    .line 453
    :cond_d9
    if-lez v0, :cond_dd

    move v9, v0

    goto :goto_de

    :cond_dd
    move v9, v2

    :goto_de
    neg-int v9, v9

    return v9
.end method

.method private static blacklist checkHouseNumber(Ljava/lang/String;)Z
    .registers 8
    .param p0, "houseNumber"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "digitCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 265
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v0, v0, 0x1

    .line 264
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    .end local v1    # "i":I
    :cond_17
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-le v0, v1, :cond_1c

    return v2

    .line 270
    :cond_1c
    sget-object v1, Landroid/webkit/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 271
    .local v1, "suffixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7a

    .line 272
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    .local v3, "num":I
    if-nez v3, :cond_34

    .line 274
    return v2

    .line 276
    :cond_34
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "suffix":Ljava/lang/String;
    rem-int/lit8 v4, v3, 0xa

    const-string/jumbo v5, "th"

    packed-switch v4, :pswitch_data_7c

    .line 285
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 283
    :pswitch_4e
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xd

    if-ne v4, v6, :cond_55

    goto :goto_58

    :cond_55
    const-string/jumbo v5, "rd"

    :goto_58
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 281
    :pswitch_5d
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xc

    if-ne v4, v6, :cond_64

    goto :goto_66

    :cond_64
    const-string v5, "nd"

    :goto_66
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 279
    :pswitch_6b
    rem-int/lit8 v4, v3, 0x64

    const/16 v6, 0xb

    if-ne v4, v6, :cond_72

    goto :goto_75

    :cond_72
    const-string/jumbo v5, "st"

    :goto_75
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 288
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "num":I
    :cond_7a
    return v4

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5d
        :pswitch_4e
    .end packed-switch
.end method

.method static blacklist findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "content"    # Ljava/lang/String;

    .line 463
    sget-object v0, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 464
    .local v0, "houseNumberMatcher":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 465
    .local v1, "start":I
    :goto_7
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 466
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 467
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 468
    invoke-static {p0, v0}, Landroid/webkit/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    move-result v2

    .line 469
    .local v2, "end":I
    if-lez v2, :cond_27

    .line 470
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 472
    :cond_27
    neg-int v1, v2

    .line 473
    .end local v2    # "end":I
    goto :goto_7

    .line 474
    :cond_29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_7

    .line 477
    :cond_2e
    const/4 v2, 0x0

    return-object v2
.end method

.method private static blacklist isValidLocationName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "location"    # Ljava/lang/String;

    .line 351
    sget-object v0, Landroid/webkit/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static blacklist isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .registers 5
    .param p0, "zipCode"    # Ljava/lang/String;
    .param p1, "stateMatch"    # Ljava/util/regex/MatchResult;

    .line 334
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 336
    :cond_4
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    .line 337
    .local v1, "stateIndex":I
    :goto_8
    if-lez v1, :cond_16

    .line 338
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "stateIndex":I
    .local v2, "stateIndex":I
    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move v1, v2

    goto :goto_16

    :cond_14
    move v1, v2

    goto :goto_8

    .line 340
    .end local v2    # "stateIndex":I
    .restart local v1    # "stateIndex":I
    :cond_16
    :goto_16
    sget-object v2, Landroid/webkit/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-object v2, Landroid/webkit/FindAddress;->sStateZipCodeRanges:[Landroid/webkit/FindAddress$ZipRange;

    aget-object v2, v2, v1

    .line 341
    invoke-virtual {v2, p0}, Landroid/webkit/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 340
    :goto_2f
    return v0
.end method

.method private static blacklist matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 300
    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 301
    :cond_13
    sget-object v1, Landroid/webkit/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 302
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 303
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    .line 304
    .local v2, "matchResult":Ljava/util/regex/MatchResult;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    return-object v2

    .line 306
    .end local v2    # "matchResult":Ljava/util/regex/MatchResult;
    :cond_37
    return-object v0
.end method

.method private static blacklist matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 319
    const/4 v0, 0x0

    if-lez p1, :cond_13

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    return-object v0

    .line 320
    :cond_13
    sget-object v1, Landroid/webkit/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 321
    .local v1, "stateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    :cond_2b
    return-object v0
.end method
