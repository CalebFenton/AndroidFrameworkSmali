.class public final Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;
.super Ljava/lang/Object;
.source "SourceRegistrationRequestInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/SourceRegistrationRequestInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdIdValue:Ljava/lang/String;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mBootRelativeRequestTime:J

.field private final blacklist mRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdIdValue(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mAdIdValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBootRelativeRequestTime(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mBootRelativeRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationRequest(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Landroid/adservices/measurement/SourceRegistrationRequest;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/adservices/measurement/SourceRegistrationRequest;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "registrationRequest"    # Landroid/adservices/measurement/SourceRegistrationRequest;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "sdkPackageName"    # Ljava/lang/String;
    .param p4, "bootRelativeRequestTime"    # J

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mRegistrationRequest:Landroid/adservices/measurement/SourceRegistrationRequest;

    .line 158
    iput-object p2, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mAppPackageName:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 160
    iput-wide p4, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mBootRelativeRequestTime:J

    .line 161
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/SourceRegistrationRequestInternal;
    .registers 3

    .line 166
    new-instance v0, Landroid/adservices/measurement/SourceRegistrationRequestInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/SourceRegistrationRequestInternal;-><init>(Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;Landroid/adservices/measurement/SourceRegistrationRequestInternal-IA;)V

    return-object v0
.end method

.method public blacklist setAdIdValue(Ljava/lang/String;)Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;
    .registers 2
    .param p1, "adIdValue"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Landroid/adservices/measurement/SourceRegistrationRequestInternal$Builder;->mAdIdValue:Ljava/lang/String;

    .line 172
    return-object p0
.end method
