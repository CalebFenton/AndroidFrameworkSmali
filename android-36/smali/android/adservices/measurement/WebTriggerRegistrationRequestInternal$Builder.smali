.class public final Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;
.super Ljava/lang/Object;
.source "WebTriggerRegistrationRequestInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mSdkPackageName:Ljava/lang/String;

.field private final blacklist mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mIsAdIdPermissionGranted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerRegistrationRequest(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/adservices/measurement/WebTriggerRegistrationRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "triggerRegistrationRequest"    # Landroid/adservices/measurement/WebTriggerRegistrationRequest;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "sdkPackageName"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mTriggerRegistrationRequest:Landroid/adservices/measurement/WebTriggerRegistrationRequest;

    .line 150
    iput-object p2, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 152
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;
    .registers 3

    .line 157
    new-instance v0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal-IA;)V

    return-object v0
.end method

.method public blacklist setAdIdPermissionGranted(Z)Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;
    .registers 2
    .param p1, "isAdIdPermissionGranted"    # Z

    .line 163
    iput-boolean p1, p0, Landroid/adservices/measurement/WebTriggerRegistrationRequestInternal$Builder;->mIsAdIdPermissionGranted:Z

    .line 164
    return-object p0
.end method
