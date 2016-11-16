.class public final Ljava/lang/AndroidHardcodedSystemProperties;
.super Ljava/lang/Object;
.source "AndroidHardcodedSystemProperties.java"


# static fields
.field public static final JAVA_VERSION:Ljava/lang/String; = "0"

.field static final STATIC_PROPERTIES:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 50
    const/16 v0, 0x1f

    #@6
    new-array v0, v0, [[Ljava/lang/String;

    #@8
    .line 54
    new-array v1, v5, [Ljava/lang/String;

    #@a
    const-string/jumbo v2, "java.class.version"

    #@d
    aput-object v2, v1, v3

    #@f
    const-string/jumbo v2, "50.0"

    #@12
    aput-object v2, v1, v4

    #@14
    aput-object v1, v0, v3

    #@16
    .line 55
    new-array v1, v5, [Ljava/lang/String;

    #@18
    const-string/jumbo v2, "java.version"

    #@1b
    aput-object v2, v1, v3

    #@1d
    const-string/jumbo v2, "0"

    #@20
    aput-object v2, v1, v4

    #@22
    aput-object v1, v0, v4

    #@24
    .line 56
    new-array v1, v5, [Ljava/lang/String;

    #@26
    const-string/jumbo v2, "java.compiler"

    #@29
    aput-object v2, v1, v3

    #@2b
    const-string/jumbo v2, ""

    #@2e
    aput-object v2, v1, v4

    #@30
    aput-object v1, v0, v5

    #@32
    .line 57
    new-array v1, v5, [Ljava/lang/String;

    #@34
    const-string/jumbo v2, "java.ext.dirs"

    #@37
    aput-object v2, v1, v3

    #@39
    const-string/jumbo v2, ""

    #@3c
    aput-object v2, v1, v4

    #@3e
    const/4 v2, 0x3

    #@3f
    aput-object v1, v0, v2

    #@41
    .line 59
    new-array v1, v5, [Ljava/lang/String;

    #@43
    const-string/jumbo v2, "java.specification.name"

    #@46
    aput-object v2, v1, v3

    #@48
    const-string/jumbo v2, "Dalvik Core Library"

    #@4b
    aput-object v2, v1, v4

    #@4d
    const/4 v2, 0x4

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 60
    new-array v1, v5, [Ljava/lang/String;

    #@52
    const-string/jumbo v2, "java.specification.vendor"

    #@55
    aput-object v2, v1, v3

    #@57
    const-string/jumbo v2, "The Android Project"

    #@5a
    aput-object v2, v1, v4

    #@5c
    const/4 v2, 0x5

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 61
    new-array v1, v5, [Ljava/lang/String;

    #@61
    const-string/jumbo v2, "java.specification.version"

    #@64
    aput-object v2, v1, v3

    #@66
    const-string/jumbo v2, "0.9"

    #@69
    aput-object v2, v1, v4

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 63
    new-array v1, v5, [Ljava/lang/String;

    #@70
    const-string/jumbo v2, "java.vendor"

    #@73
    aput-object v2, v1, v3

    #@75
    const-string/jumbo v2, "The Android Project"

    #@78
    aput-object v2, v1, v4

    #@7a
    const/4 v2, 0x7

    #@7b
    aput-object v1, v0, v2

    #@7d
    .line 64
    new-array v1, v5, [Ljava/lang/String;

    #@7f
    const-string/jumbo v2, "java.vendor.url"

    #@82
    aput-object v2, v1, v3

    #@84
    const-string/jumbo v2, "http://www.android.com/"

    #@87
    aput-object v2, v1, v4

    #@89
    const/16 v2, 0x8

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 65
    new-array v1, v5, [Ljava/lang/String;

    #@8f
    const-string/jumbo v2, "java.vm.name"

    #@92
    aput-object v2, v1, v3

    #@94
    const-string/jumbo v2, "Dalvik"

    #@97
    aput-object v2, v1, v4

    #@99
    const/16 v2, 0x9

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 66
    new-array v1, v5, [Ljava/lang/String;

    #@9f
    const-string/jumbo v2, "java.vm.specification.name"

    #@a2
    aput-object v2, v1, v3

    #@a4
    const-string/jumbo v2, "Dalvik Virtual Machine Specification"

    #@a7
    aput-object v2, v1, v4

    #@a9
    const/16 v2, 0xa

    #@ab
    aput-object v1, v0, v2

    #@ad
    .line 67
    new-array v1, v5, [Ljava/lang/String;

    #@af
    const-string/jumbo v2, "java.vm.specification.vendor"

    #@b2
    aput-object v2, v1, v3

    #@b4
    const-string/jumbo v2, "The Android Project"

    #@b7
    aput-object v2, v1, v4

    #@b9
    const/16 v2, 0xb

    #@bb
    aput-object v1, v0, v2

    #@bd
    .line 68
    new-array v1, v5, [Ljava/lang/String;

    #@bf
    const-string/jumbo v2, "java.vm.specification.version"

    #@c2
    aput-object v2, v1, v3

    #@c4
    const-string/jumbo v2, "0.9"

    #@c7
    aput-object v2, v1, v4

    #@c9
    const/16 v2, 0xc

    #@cb
    aput-object v1, v0, v2

    #@cd
    .line 69
    new-array v1, v5, [Ljava/lang/String;

    #@cf
    const-string/jumbo v2, "java.vm.vendor"

    #@d2
    aput-object v2, v1, v3

    #@d4
    const-string/jumbo v2, "The Android Project"

    #@d7
    aput-object v2, v1, v4

    #@d9
    const/16 v2, 0xd

    #@db
    aput-object v1, v0, v2

    #@dd
    .line 71
    new-array v1, v5, [Ljava/lang/String;

    #@df
    const-string/jumbo v2, "java.vm.vendor.url"

    #@e2
    aput-object v2, v1, v3

    #@e4
    const-string/jumbo v2, "http://www.android.com/"

    #@e7
    aput-object v2, v1, v4

    #@e9
    const/16 v2, 0xe

    #@eb
    aput-object v1, v0, v2

    #@ed
    .line 73
    new-array v1, v5, [Ljava/lang/String;

    #@ef
    const-string/jumbo v2, "java.net.preferIPv6Addresses"

    #@f2
    aput-object v2, v1, v3

    #@f4
    const-string/jumbo v2, "false"

    #@f7
    aput-object v2, v1, v4

    #@f9
    const/16 v2, 0xf

    #@fb
    aput-object v1, v0, v2

    #@fd
    .line 75
    new-array v1, v5, [Ljava/lang/String;

    #@ff
    const-string/jumbo v2, "file.encoding"

    #@102
    aput-object v2, v1, v3

    #@104
    const-string/jumbo v2, "UTF-8"

    #@107
    aput-object v2, v1, v4

    #@109
    const/16 v2, 0x10

    #@10b
    aput-object v1, v0, v2

    #@10d
    .line 77
    new-array v1, v5, [Ljava/lang/String;

    #@10f
    const-string/jumbo v2, "file.separator"

    #@112
    aput-object v2, v1, v3

    #@114
    const-string/jumbo v2, "/"

    #@117
    aput-object v2, v1, v4

    #@119
    const/16 v2, 0x11

    #@11b
    aput-object v1, v0, v2

    #@11d
    .line 78
    new-array v1, v5, [Ljava/lang/String;

    #@11f
    const-string/jumbo v2, "line.separator"

    #@122
    aput-object v2, v1, v3

    #@124
    const-string/jumbo v2, "\n"

    #@127
    aput-object v2, v1, v4

    #@129
    const/16 v2, 0x12

    #@12b
    aput-object v1, v0, v2

    #@12d
    .line 79
    new-array v1, v5, [Ljava/lang/String;

    #@12f
    const-string/jumbo v2, "path.separator"

    #@132
    aput-object v2, v1, v3

    #@134
    const-string/jumbo v2, ":"

    #@137
    aput-object v2, v1, v4

    #@139
    const/16 v2, 0x13

    #@13b
    aput-object v1, v0, v2

    #@13d
    .line 83
    new-array v1, v5, [Ljava/lang/String;

    #@13f
    const-string/jumbo v2, "ICUDebug"

    #@142
    aput-object v2, v1, v3

    #@144
    aput-object v6, v1, v4

    #@146
    const/16 v2, 0x14

    #@148
    aput-object v1, v0, v2

    #@14a
    .line 86
    new-array v1, v5, [Ljava/lang/String;

    #@14c
    const-string/jumbo v2, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    #@14f
    aput-object v2, v1, v3

    #@151
    aput-object v6, v1, v4

    #@153
    const/16 v2, 0x15

    #@155
    aput-object v1, v0, v2

    #@157
    .line 88
    new-array v1, v5, [Ljava/lang/String;

    #@159
    const-string/jumbo v2, "android.icu.text.MessagePattern.ApostropheMode"

    #@15c
    aput-object v2, v1, v3

    #@15e
    aput-object v6, v1, v4

    #@160
    const/16 v2, 0x16

    #@162
    aput-object v1, v0, v2

    #@164
    .line 91
    new-array v1, v5, [Ljava/lang/String;

    #@166
    const-string/jumbo v2, "sun.io.useCanonCaches"

    #@169
    aput-object v2, v1, v3

    #@16b
    aput-object v6, v1, v4

    #@16d
    const/16 v2, 0x17

    #@16f
    aput-object v1, v0, v2

    #@171
    .line 92
    new-array v1, v5, [Ljava/lang/String;

    #@173
    const-string/jumbo v2, "sun.io.useCanonPrefixCache"

    #@176
    aput-object v2, v1, v3

    #@178
    aput-object v6, v1, v4

    #@17a
    const/16 v2, 0x18

    #@17c
    aput-object v1, v0, v2

    #@17e
    .line 95
    new-array v1, v5, [Ljava/lang/String;

    #@180
    const-string/jumbo v2, "http.keepAlive"

    #@183
    aput-object v2, v1, v3

    #@185
    aput-object v6, v1, v4

    #@187
    const/16 v2, 0x19

    #@189
    aput-object v1, v0, v2

    #@18b
    .line 96
    new-array v1, v5, [Ljava/lang/String;

    #@18d
    const-string/jumbo v2, "http.keepAliveDuration"

    #@190
    aput-object v2, v1, v3

    #@192
    aput-object v6, v1, v4

    #@194
    const/16 v2, 0x1a

    #@196
    aput-object v1, v0, v2

    #@198
    .line 97
    new-array v1, v5, [Ljava/lang/String;

    #@19a
    const-string/jumbo v2, "http.maxConnections"

    #@19d
    aput-object v2, v1, v3

    #@19f
    aput-object v6, v1, v4

    #@1a1
    const/16 v2, 0x1b

    #@1a3
    aput-object v1, v0, v2

    #@1a5
    .line 101
    new-array v1, v5, [Ljava/lang/String;

    #@1a7
    const-string/jumbo v2, "os.name"

    #@1aa
    aput-object v2, v1, v3

    #@1ac
    const-string/jumbo v2, "Linux"

    #@1af
    aput-object v2, v1, v4

    #@1b1
    const/16 v2, 0x1c

    #@1b3
    aput-object v1, v0, v2

    #@1b5
    .line 105
    new-array v1, v5, [Ljava/lang/String;

    #@1b7
    const-string/jumbo v2, "javax.net.debug"

    #@1ba
    aput-object v2, v1, v3

    #@1bc
    aput-object v6, v1, v4

    #@1be
    const/16 v2, 0x1d

    #@1c0
    aput-object v1, v0, v2

    #@1c2
    .line 108
    new-array v1, v5, [Ljava/lang/String;

    #@1c4
    const-string/jumbo v2, "com.sun.security.preserveOldDCEncoding"

    #@1c7
    aput-object v2, v1, v3

    #@1c9
    aput-object v6, v1, v4

    #@1cb
    const/16 v2, 0x1e

    #@1cd
    aput-object v1, v0, v2

    #@1cf
    .line 50
    sput-object v0, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    #@1d1
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
