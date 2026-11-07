.class public final Landroid/content/ContextParams$Builder;
.super Ljava/lang/Object;
.source "ContextParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContextParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mNext:Landroid/content/AttributionSource;

.field private blacklist mRenouncedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShouldRegisterAttributionSource:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    .line 135
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ContextParams;)V
    .registers 3
    .param p1, "params"    # Landroid/content/ContextParams;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    .line 146
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmAttributionTag(Landroid/content/ContextParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmRenouncedPermissions(Landroid/content/ContextParams;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    .line 149
    invoke-static {p1}, Landroid/content/ContextParams;->-$$Nest$fgetmNext(Landroid/content/ContextParams;)Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    .line 150
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/ContextParams;
    .registers 7

    .line 238
    new-instance v0, Landroid/content/ContextParams;

    iget-object v1, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    iget-boolean v4, p0, Landroid/content/ContextParams$Builder;->mShouldRegisterAttributionSource:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/ContextParams;-><init>(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/util/Set;ZLandroid/content/ContextParams-IA;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;
    .registers 2
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mAttributionTag:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public whitelist setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;
    .registers 2
    .param p1, "next"    # Landroid/content/AttributionSource;

    .line 174
    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mNext:Landroid/content/AttributionSource;

    .line 175
    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ContextParams$Builder;"
        }
    .end annotation

    .line 221
    .local p1, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 222
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "android.permission.RENOUNCE_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/app/Application;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 224
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Renouncing permissions requires: android.permission.RENOUNCE_PERMISSIONS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1d
    :goto_1d
    iput-object p1, p0, Landroid/content/ContextParams$Builder;->mRenouncedPermissions:Ljava/util/Set;

    .line 228
    return-object p0
.end method

.method public whitelist setShouldRegisterAttributionSource(Z)Landroid/content/ContextParams$Builder;
    .registers 2
    .param p1, "shouldRegister"    # Z

    .line 188
    iput-boolean p1, p0, Landroid/content/ContextParams$Builder;->mShouldRegisterAttributionSource:Z

    .line 189
    return-object p0
.end method
