.class public final Landroid/credentials/selection/IntentCreationResult$Builder;
.super Ljava/lang/Object;
.source "IntentCreationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/selection/IntentCreationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFallbackUiPackageName:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mOemUiPackageName:Ljava/lang/String;

.field private blacklist mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    .line 110
    sget-object v0, Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;->UNKNOWN:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    iput-object v0, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 114
    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mIntent:Landroid/content/Intent;

    .line 115
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/credentials/selection/IntentCreationResult;
    .registers 7

    .line 151
    new-instance v0, Landroid/credentials/selection/IntentCreationResult;

    iget-object v1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/credentials/selection/IntentCreationResult;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;Landroid/credentials/selection/IntentCreationResult-IA;)V

    return-object v0
.end method

.method public blacklist setFallbackUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .registers 2
    .param p1, "fallbackUiPackageName"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mFallbackUiPackageName:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public blacklist setOemUiPackageName(Ljava/lang/String;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .registers 2
    .param p1, "oemUiPackageName"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiPackageName:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setOemUiUsageStatus(Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;)Landroid/credentials/selection/IntentCreationResult$Builder;
    .registers 2
    .param p1, "oemUiUsageStatus"    # Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 144
    iput-object p1, p0, Landroid/credentials/selection/IntentCreationResult$Builder;->mOemUiUsageStatus:Landroid/credentials/selection/IntentCreationResult$OemUiUsageStatus;

    .line 145
    return-object p0
.end method
