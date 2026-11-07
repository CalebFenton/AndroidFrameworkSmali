.class Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SetFileDescriptor;
.super Ljava/lang/Object;
.source "AndroidNetworkLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetFileDescriptor"
.end annotation


# static fields
.field private static final blacklist sFileDescriptorSetInt:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 529
    :try_start_0
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "setInt$"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SetFileDescriptor;->sFileDescriptorSetInt:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_12} :catch_14

    .line 532
    nop

    .line 533
    return-void

    .line 530
    :catch_14
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get FileDescriptor.setInt$"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createWithFd(I)Ljava/io/FileDescriptor;
    .registers 5
    .param p0, "fd"    # I

    .line 538
    const-string v0, "FileDescriptor.setInt$() failed"

    :try_start_2
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 539
    .local v1, "fileDescriptor":Ljava/io/FileDescriptor;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/AndroidNetworkLibrary$SetFileDescriptor;->sFileDescriptorSetInt:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_14} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_14} :catch_15

    .line 540
    return-object v1

    .line 543
    .end local v1    # "fileDescriptor":Ljava/io/FileDescriptor;
    :catch_15
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 541
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1c
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
