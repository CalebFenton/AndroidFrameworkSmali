.class public final Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;
.super Ljava/lang/Object;
.source "WebSourceRegistrationRequestInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mRequestTime:J

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mIsAdIdPermissionGranted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestTime(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceRegistrationRequest(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/adservices/measurement/WebSourceRegistrationRequest;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "sourceRegistrationRequest"    # Landroid/adservices/measurement/WebSourceRegistrationRequest;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "sdkPackageName"    # Ljava/lang/String;
    .param p4, "requestTime"    # J

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mSourceRegistrationRequest:Landroid/adservices/measurement/WebSourceRegistrationRequest;

    .line 162
    iput-object p2, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 164
    iput-wide p4, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mRequestTime:J

    .line 165
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;
    .registers 3

    .line 170
    new-instance v0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/WebSourceRegistrationRequestInternal-IA;)V

    return-object v0
.end method

.method public blacklist setAdIdPermissionGranted(Z)Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;
    .registers 2
    .param p1, "isAdIdPermissionGranted"    # Z

    .line 176
    iput-boolean p1, p0, Landroid/adservices/measurement/WebSourceRegistrationRequestInternal$Builder;->mIsAdIdPermissionGranted:Z

    .line 177
    return-object p0
.end method
