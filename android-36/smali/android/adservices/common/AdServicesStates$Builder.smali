.class public final Landroid/adservices/common/AdServicesStates$Builder;
.super Ljava/lang/Object;
.source "AdServicesStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdServicesStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsAdIdEnabled:Z

.field private blacklist mIsAdultAccount:Z

.field private blacklist mIsPrivacySandboxUiEnabled:Z

.field private blacklist mIsPrivacySandboxUiRequest:Z

.field private blacklist mIsU18Account:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/AdServicesStates;
    .registers 8

    .line 180
    new-instance v0, Landroid/adservices/common/AdServicesStates;

    iget-boolean v1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsPrivacySandboxUiEnabled:Z

    iget-boolean v2, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsPrivacySandboxUiRequest:Z

    iget-boolean v3, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsU18Account:Z

    iget-boolean v4, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsAdultAccount:Z

    iget-boolean v5, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsAdIdEnabled:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/adservices/common/AdServicesStates;-><init>(ZZZZZLandroid/adservices/common/AdServicesStates-IA;)V

    return-object v0
.end method

.method public whitelist setAdIdEnabled(Z)Landroid/adservices/common/AdServicesStates$Builder;
    .registers 2
    .param p1, "isAdIdEnabled"    # Z

    .line 173
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsAdIdEnabled:Z

    .line 174
    return-object p0
.end method

.method public whitelist setAdultAccount(Z)Landroid/adservices/common/AdServicesStates$Builder;
    .registers 2
    .param p1, "isAdultAccount"    # Z

    .line 166
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsAdultAccount:Z

    .line 167
    return-object p0
.end method

.method public whitelist setPrivacySandboxUiEnabled(Z)Landroid/adservices/common/AdServicesStates$Builder;
    .registers 2
    .param p1, "isPrivacySandboxUiEnabled"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsPrivacySandboxUiEnabled:Z

    .line 146
    return-object p0
.end method

.method public whitelist setPrivacySandboxUiRequest(Z)Landroid/adservices/common/AdServicesStates$Builder;
    .registers 2
    .param p1, "isPrivacySandboxUiRequest"    # Z

    .line 152
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsPrivacySandboxUiRequest:Z

    .line 153
    return-object p0
.end method

.method public whitelist setU18Account(Z)Landroid/adservices/common/AdServicesStates$Builder;
    .registers 2
    .param p1, "isU18Account"    # Z

    .line 159
    iput-boolean p1, p0, Landroid/adservices/common/AdServicesStates$Builder;->mIsU18Account:Z

    .line 160
    return-object p0
.end method
