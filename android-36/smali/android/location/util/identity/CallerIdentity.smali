.class public final Landroid/location/util/identity/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/util/identity/CallerIdentity$Loader;
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mListenerId:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPid:I

.field private final blacklist mUid:I


# direct methods
.method private constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    .line 147
    iput p2, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    .line 148
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 149
    iput-object p4, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public static blacklist forAggregation(Landroid/location/util/identity/CallerIdentity;)Landroid/location/util/identity/CallerIdentity;
    .registers 8
    .param p0, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;

    .line 63
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getListenerId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 64
    return-object p0

    .line 67
    :cond_d
    new-instance v1, Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v1
.end method

.method public static blacklist forTest(IILjava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 5
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/location/util/identity/CallerIdentity;->forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist forTest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 11
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/location/util/identity/CallerIdentity;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "uid":I
    .end local p1    # "pid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "listenerId":Ljava/lang/String;
    .local v1, "uid":I
    .local v2, "pid":I
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "listenerId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "listenerId"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 97
    .local v0, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 101
    invoke-static {p1, p2, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    return-object v1

    .line 98
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid package \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "listenerId"    # Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p0    # "packageName":Ljava/lang/String;
    .end local p1    # "attributionTag":Ljava/lang/String;
    .end local p2    # "listenerId":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    .local v4, "attributionTag":Ljava/lang/String;
    .local v5, "listenerId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist fromContext(Landroid/content/Context;)Landroid/location/util/identity/CallerIdentity;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/location/util/identity/CallerIdentity;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/location/util/identity/CallerIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public blacklist addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .line 214
    if-nez p1, :cond_c

    .line 215
    new-instance v0, Landroid/os/WorkSource;

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 217
    :cond_c
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 218
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 248
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 249
    return v0

    .line 251
    :cond_4
    instance-of v1, p1, Landroid/location/util/identity/CallerIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 252
    return v2

    .line 254
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/util/identity/CallerIdentity;

    .line 255
    .local v1, "that":Landroid/location/util/identity/CallerIdentity;
    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mUid:I

    if-ne v3, v4, :cond_40

    iget v3, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    iget v4, v1, Landroid/location/util/identity/CallerIdentity;->mPid:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 257
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    .line 258
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, v1, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    iget-object v4, v1, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    .line 259
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_3f
    goto :goto_41

    :cond_40
    move v0, v2

    .line 255
    :goto_41
    return v0
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListenerId()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPid()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 155
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 265
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isMyProcess()Z
    .registers 3

    .line 206
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mPid:I

    invoke-static {}, Landroid/location/util/identity/CallerIdentity$Loader;->-$$Nest$sfgetMY_PID()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMyUid()Z
    .registers 3

    .line 198
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {}, Landroid/location/util/identity/CallerIdentity$Loader;->-$$Nest$sfgetMY_UID()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isMyUser()Z
    .registers 3

    .line 193
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/location/util/identity/CallerIdentity$Loader;->-$$Nest$sfgetMY_UID()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist isSystemServer()Z
    .registers 3

    .line 188
    iget v0, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 224
    iget-object v0, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 225
    .local v0, "length":I
    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 226
    iget-object v1, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 230
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/location/util/identity/CallerIdentity;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_56

    .line 232
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 234
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/location/util/identity/CallerIdentity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 236
    :cond_4c
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :goto_51
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :cond_56
    iget-object v2, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 241
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/location/util/identity/CallerIdentity;->mListenerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
