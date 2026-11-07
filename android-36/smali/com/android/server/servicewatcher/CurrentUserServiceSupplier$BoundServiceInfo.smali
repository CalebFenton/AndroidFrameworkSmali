.class public Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
.super Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.source "CurrentUserServiceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mVersion:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "version"    # I
    .param p5, "metadata"    # Landroid/os/Bundle;

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    .line 137
    iput p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 138
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 129
    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseUid(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 130
    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseVersion(Landroid/content/pm/ResolveInfo;)I

    move-result v4

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 129
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "action":Ljava/lang/String;
    .local v1, "action":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method private static blacklist parseUid(Landroid/content/pm/ResolveInfo;)I
    .registers 5
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 108
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 109
    .local v0, "uid":I
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 110
    .local v1, "metadata":Landroid/os/Bundle;
    if-eqz v1, :cond_1e

    const-string/jumbo v2, "serviceIsMultiuser"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 112
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 114
    :cond_1e
    return v0
.end method

.method private static blacklist parseVersion(Landroid/content/pm/ResolveInfo;)I
    .registers 4
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 118
    const/high16 v0, -0x80000000

    .line 119
    .local v0, "version":I
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_13

    .line 120
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "serviceVersion"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    :cond_13
    return v0
.end method


# virtual methods
.method public blacklist getMetadata()Landroid/os/Bundle;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
