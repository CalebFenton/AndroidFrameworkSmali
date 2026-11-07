.class public Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;
.super Ljava/lang/Exception;
.source "OnDeviceIntelligenceException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException$OnDeviceIntelligenceError;
    }
.end annotation


# static fields
.field public static final whitelist ON_DEVICE_INTELLIGENCE_SERVICE_UNAVAILABLE:I = 0x64

.field public static final whitelist PROCESSING_ERROR_BAD_DATA:I = 0x2

.field public static final whitelist PROCESSING_ERROR_BAD_REQUEST:I = 0x3

.field public static final whitelist PROCESSING_ERROR_BUSY:I = 0x9

.field public static final whitelist PROCESSING_ERROR_CANCELLED:I = 0x7

.field public static final whitelist PROCESSING_ERROR_COMPUTE_ERROR:I = 0x5

.field public static final whitelist PROCESSING_ERROR_INTERNAL:I = 0xe

.field public static final whitelist PROCESSING_ERROR_IPC_ERROR:I = 0x6

.field public static final whitelist PROCESSING_ERROR_NOT_AVAILABLE:I = 0x8

.field public static final whitelist PROCESSING_ERROR_REQUEST_NOT_SAFE:I = 0x4

.field public static final whitelist PROCESSING_ERROR_REQUEST_TOO_LARGE:I = 0xc

.field public static final whitelist PROCESSING_ERROR_RESPONSE_NOT_SAFE:I = 0xb

.field public static final whitelist PROCESSING_ERROR_SAFETY_ERROR:I = 0xa

.field public static final whitelist PROCESSING_ERROR_SERVICE_UNAVAILABLE:I = 0xf

.field public static final whitelist PROCESSING_ERROR_SUSPENDED:I = 0xd

.field public static final whitelist PROCESSING_ERROR_UNKNOWN:I = 0x1

.field public static final whitelist PROCESSING_UPDATE_STATUS_CONNECTION_FAILED:I = 0xc8


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorParams:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 197
    iput p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorCode:I

    .line 198
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorParams:Landroid/os/PersistableBundle;

    .line 199
    return-void
.end method

.method public constructor whitelist <init>(ILandroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errorParams"    # Landroid/os/PersistableBundle;

    .line 172
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 173
    iput p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorCode:I

    .line 174
    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorParams:Landroid/os/PersistableBundle;

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 186
    iput p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorCode:I

    .line 187
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorParams:Landroid/os/PersistableBundle;

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "errorParams"    # Landroid/os/PersistableBundle;

    .line 159
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 160
    iput p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorCode:I

    .line 161
    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorParams:Landroid/os/PersistableBundle;

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;->mErrorParams:Landroid/os/PersistableBundle;

    return-object v0
.end method
