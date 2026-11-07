.class public final Landroid/app/smartspace/SmartspaceConfig$Builder;
.super Ljava/lang/Object;
.source "SmartspaceConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/SmartspaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mSmartspaceTargetCount:I

.field private final blacklist mUiSurface:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiSurface"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x5

    iput v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    .line 168
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mPackageName:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mUiSurface:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/SmartspaceConfig;
    .registers 7

    .line 206
    new-instance v0, Landroid/app/smartspace/SmartspaceConfig;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mUiSurface:Ljava/lang/String;

    iget v2, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    iget-object v3, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/app/smartspace/SmartspaceConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/smartspace/SmartspaceConfig-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/smartspace/SmartspaceConfig$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 197
    iput-object p1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mExtras:Landroid/os/Bundle;

    .line 198
    return-object p0
.end method

.method public whitelist setSmartspaceTargetCount(I)Landroid/app/smartspace/SmartspaceConfig$Builder;
    .registers 2
    .param p1, "smartspaceTargetCount"    # I

    .line 188
    iput p1, p0, Landroid/app/smartspace/SmartspaceConfig$Builder;->mSmartspaceTargetCount:I

    .line 189
    return-object p0
.end method
