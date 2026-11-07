.class public Landroid/os/VintfObject;
.super Ljava/lang/Object;
.source "VintfObject.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "VintfObject"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-string/jumbo v0, "vintf_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist getHalNamesAndVersions()[Ljava/lang/String;
.end method

.method public static native blacklist getPlatformSepolicyVersion()Ljava/lang/String;
.end method

.method public static native blacklist getSepolicyVersion()Ljava/lang/String;
.end method

.method public static native blacklist getTargetFrameworkCompatibilityMatrixVersion()Ljava/lang/Long;
.end method

.method public static native blacklist getVndkSnapshots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native blacklist report()[Ljava/lang/String;
.end method

.method private static blacklist runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 126
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 127
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v2

    .line 128
    .local v2, "automation":Landroid/app/UiAutomation;
    invoke-virtual {v2, p0}, Landroid/app/UiAutomation;->executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 129
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 130
    .local v4, "is":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_15
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->readAllBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    .line 131
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    .line 130
    return-object v5

    .line 129
    :catchall_22
    move-exception v5

    :try_start_23
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2b
    throw v5
.end method

.method public static native blacklist verifyBuildAtBoot()I
.end method
