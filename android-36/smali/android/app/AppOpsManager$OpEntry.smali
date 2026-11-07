.class public final Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEntry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributedOpEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMode:I

.field private final greylist-max-o mOp:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 5323
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/util/Map;)V
    .registers 13
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)V"
        }
    .end annotation

    .line 5245
    .local p3, "attributedOpEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5246
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5247
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0xa2

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5251
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5252
    const-class v0, Landroid/app/AppOpsManager$Mode;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5254
    iput-object p3, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5255
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5259
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 5298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5303
    .local v0, "op":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5304
    .local v1, "mode":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5305
    .local v2, "attributions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/AppOpsManager$AttributedOpEntry;>;"
    const-class v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 5307
    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 5308
    const-class v4, Landroid/annotation/IntRange;

    iget v6, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    const-string/jumbo v10, "to"

    const-wide/16 v11, 0xa2

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 5312
    iput v1, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 5313
    const-class v3, Landroid/app/AppOpsManager$Mode;

    iget v4, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5315
    iput-object v2, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    .line 5316
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 5320
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 12
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4834
    const/4 v0, 0x0

    .line 4835
    .local v0, "lastAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4836
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4839
    .local v3, "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2c

    .line 4840
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4841
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    .line 4842
    :cond_2b
    move-object v0, v3

    .line 4844
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionAccessEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2c
    goto :goto_b

    .line 4846
    :cond_2d
    return-object v0
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 12
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4949
    const/4 v0, 0x0

    .line 4950
    .local v0, "lastRejectEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    iget-object v1, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4951
    .local v2, "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-static {v2, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v3

    .line 4954
    .local v3, "lastAttributionRejectEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-eqz v0, :cond_2b

    if-eqz v3, :cond_2c

    .line 4955
    invoke-virtual {v3}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v4

    .line 4956
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    .line 4957
    :cond_2b
    move-object v0, v3

    .line 4959
    .end local v2    # "attributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    .end local v3    # "lastAttributionRejectEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    :cond_2c
    goto :goto_b

    .line 4961
    :cond_2d
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 5293
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributedOpEntries()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    .line 5277
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5008
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4821
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4803
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4786
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4866
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4868
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4869
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4872
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 5057
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5186
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 5024
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 5077
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 5078
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 5079
    const-wide/16 v1, -0x1

    return-wide v1

    .line 5082
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 5040
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5168
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 5151
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 5207
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 5208
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_8

    .line 5209
    const/4 v1, 0x0

    return-object v1

    .line 5212
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4936
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4918
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4901
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4982
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4983
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4984
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4987
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getMode()I
    .registers 2

    .line 5266
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public greylist-max-r getOp()I
    .registers 2

    .line 4750
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public whitelist getOpStr()Ljava/lang/String;
    .registers 3

    .line 4757
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    iget v1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5116
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5117
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_a

    .line 5118
    const/4 v1, 0x0

    return-object v1

    .line 5121
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyPackageName(II)Ljava/lang/String;
    .registers 5
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5129
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5130
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_8

    .line 5131
    const/4 v1, 0x0

    return-object v1

    .line 5134
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getProxyUid()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5090
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5091
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_a

    .line 5092
    const/4 v1, -0x1

    return v1

    .line 5095
    :cond_a
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public whitelist getProxyUid(II)I
    .registers 5
    .param p1, "uidState"    # I
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5103
    invoke-virtual {p0, p1, p1, p2}, Landroid/app/AppOpsManager$OpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    .line 5104
    .local v0, "proxy":Landroid/app/AppOpsManager$OpEventProxyInfo;
    if-nez v0, :cond_8

    .line 5105
    const/4 v1, -0x1

    return v1

    .line 5108
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEventProxyInfo;->getUid()I

    move-result v1

    return v1
.end method

.method public greylist-max-r getRejectTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4884
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4769
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isRunning()Z
    .registers 4

    .line 4994
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4995
    .local v1, "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4996
    const/4 v0, 0x1

    return v0

    .line 4998
    .end local v1    # "opAttributionEntry":Landroid/app/AppOpsManager$AttributedOpEntry;
    :cond_1e
    goto :goto_a

    .line 5000
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 5286
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5287
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5288
    iget-object v0, p0, Landroid/app/AppOpsManager$OpEntry;->mAttributedOpEntries:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 5289
    return-void
.end method
