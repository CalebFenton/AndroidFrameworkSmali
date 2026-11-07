.class public Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FLAGS:I = 0x40000005


# instance fields
.field protected final blacklist mAction:Ljava/lang/String;

.field protected final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mFlags:I

.field protected final blacklist mUid:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 169
    const v0, 0x40000005    # 2.0000012f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;I)V

    .line 170
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;I)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "flags"    # I

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    .line 175
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 176
    iput p4, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    .line 177
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 164
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 165
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 164
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 202
    return v0

    .line 204
    :cond_4
    instance-of v1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 205
    return v2

    .line 208
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 209
    .local v1, "that":Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    iget v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    iget v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 210
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    iget v4, v1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 209
    :goto_2f
    return v0
.end method

.method public blacklist getAction()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
