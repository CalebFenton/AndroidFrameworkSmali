.class public Landroid/telephony/TelephonyManager$CallComposerException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallComposerException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$CallComposerException$CallComposerError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_AUTHENTICATION_FAILED:I = 0x3

.field public static final whitelist ERROR_FILE_TOO_LARGE:I = 0x2

.field public static final whitelist ERROR_INPUT_CLOSED:I = 0x4

.field public static final whitelist ERROR_IO_EXCEPTION:I = 0x5

.field public static final whitelist ERROR_NETWORK_UNAVAILABLE:I = 0x6

.field public static final whitelist ERROR_REMOTE_END_CLOSED:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I = 0x0

.field public static final blacklist SUCCESS:I = -0x1


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mIOException:Ljava/io/IOException;


# direct methods
.method public constructor whitelist <init>(ILjava/io/IOException;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "ioException"    # Ljava/io/IOException;

    .line 5014
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 5015
    iput p1, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mErrorCode:I

    .line 5016
    iput-object p2, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mIOException:Ljava/io/IOException;

    .line 5017
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 5024
    iget v0, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mErrorCode:I

    return v0
.end method

.method public whitelist getIOException()Ljava/io/IOException;
    .registers 2

    .line 5033
    iget-object v0, p0, Landroid/telephony/TelephonyManager$CallComposerException;->mIOException:Ljava/io/IOException;

    return-object v0
.end method
