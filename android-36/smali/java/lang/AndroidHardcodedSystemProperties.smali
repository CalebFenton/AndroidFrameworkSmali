.class public final Ljava/lang/AndroidHardcodedSystemProperties;
.super Ljava/lang/Object;
.source "AndroidHardcodedSystemProperties.java"


# static fields
.field public static final greylist-max-o JAVA_VERSION:Ljava/lang/String; = "0"

.field static final greylist-max-o STATIC_PROPERTIES:[[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 33

    .line 50
    const-string v0, "java.class.version"

    const-string v1, "50.0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "java.version"

    const-string v1, "0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "java.compiler"

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "java.ext.dirs"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "java.specification.name"

    const-string v1, "Dalvik Core Library"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "java.specification.vendor"

    const-string v1, "The Android Project"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "java.specification.version"

    const-string v8, "0.9"

    filled-new-array {v0, v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v9, "java.vendor"

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.vendor.url"

    const-string v11, "http://www.android.com/"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "java.vm.name"

    const-string v13, "Dalvik"

    filled-new-array {v12, v13}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "java.vm.specification.name"

    const-string v14, "Dalvik Virtual Machine Specification"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    const-string v14, "java.vm.specification.vendor"

    filled-new-array {v14, v1}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "java.vm.specification.version"

    filled-new-array {v15, v8}, [Ljava/lang/String;

    move-result-object v8

    const-string v15, "java.vm.vendor"

    filled-new-array {v15, v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "java.vm.vendor.url"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "java.net.preferIPv6Addresses"

    const-string v11, "false"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "file.encoding"

    const-string v11, "UTF-8"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "file.separator"

    const-string v11, "/"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "line.separator"

    const-string v11, "\n"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v20

    const-string v1, "path.separator"

    const-string v11, ":"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v21

    const-string v1, "ICUDebug"

    const/4 v11, 0x0

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v22

    const-string v1, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v23

    const-string v1, "android.icu.text.MessagePattern.ApostropheMode"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "sun.io.useCanonCaches"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v25

    const-string v1, "sun.io.useCanonPrefixCache"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v26

    const-string v1, "http.keepAlive"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v27

    const-string v1, "http.keepAliveDuration"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v28

    const-string v1, "http.maxConnections"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v29

    const-string v1, "javax.net.debug"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v30

    const-string v1, "com.sun.security.preserveOldDCEncoding"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v31

    const-string v1, "java.util.logging.manager"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v32

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v8

    move-object v8, v0

    filled-new-array/range {v2 .. v32}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/lang/AndroidHardcodedSystemProperties;->STATIC_PROPERTIES:[[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
