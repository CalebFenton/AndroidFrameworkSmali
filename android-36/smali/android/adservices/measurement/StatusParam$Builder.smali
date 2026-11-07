.class public final Landroid/adservices/measurement/StatusParam$Builder;
.super Ljava/lang/Object;
.source "StatusParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/StatusParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/StatusParam$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/StatusParam$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/StatusParam$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/StatusParam$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "sdkPackageName"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Landroid/adservices/measurement/StatusParam$Builder;->mAppPackageName:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Landroid/adservices/measurement/StatusParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/StatusParam;
    .registers 3

    .line 106
    new-instance v0, Landroid/adservices/measurement/StatusParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/StatusParam;-><init>(Landroid/adservices/measurement/StatusParam$Builder;Landroid/adservices/measurement/StatusParam-IA;)V

    return-object v0
.end method
