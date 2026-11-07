.class public final Landroid/app/AppOpsManager$AttributedOpEntry;
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
    name = "AttributedOpEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAccessEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOp:I

.field private final blacklist mRejectEvents:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRunning:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4631
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    .line 4632
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    .line 4635
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 4636
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;-><init>(Landroid/app/AppOpsManager-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    .line 4642
    :cond_18
    const-class v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    .line 4643
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    .line 4646
    sget-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_2f

    .line 4647
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$AttributedOpEntry$LongSparseArrayParceling;-><init>(Landroid/app/AppOpsManager-IA;)V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    .line 4698
    :cond_2f
    new-instance v0, Landroid/app/AppOpsManager$AttributedOpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedOpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedOpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 14
    .param p1, "op"    # I
    .param p2, "running"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;)V"
        }
    .end annotation

    .line 4609
    .local p3, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    .local p4, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4610
    iput p1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4611
    const-class v0, Landroid/annotation/IntRange;

    iget v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0xa2

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 4615
    iput-boolean p2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4616
    iput-object p3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4617
    iput-object p4, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4620
    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedOpEntry;)V
    .registers 4
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 4160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4161
    iget v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    iput v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4162
    iget-boolean v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    iput-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4163
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_12

    move-object v0, v1

    goto :goto_18

    :cond_12
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4164
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v1

    :goto_25
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4165
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/AppOpsManager$AttributedOpEntry;Landroid/app/AppOpsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(Landroid/app/AppOpsManager$AttributedOpEntry;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4679
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 4680
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 4681
    .local v1, "running":Z
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4682
    .local v2, "op":I
    sget-object v3, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/LongSparseArray;

    .line 4683
    .local v3, "accessEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    sget-object v4, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 4685
    .local v4, "rejectEvents":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/app/AppOpsManager$NoteOpEvent;>;"
    iput v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    .line 4686
    const-class v5, Landroid/annotation/IntRange;

    iget v7, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    const-string/jumbo v11, "to"

    const-wide/16 v12, 0xa2

    const/4 v6, 0x0

    const-string v8, "from"

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 4690
    iput-boolean v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    .line 4691
    iput-object v3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    .line 4692
    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    .line 4695
    return-void
.end method

.method private blacklist getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 5
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4254
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 5
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4349
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist collectKeys()Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4173
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 4175
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_22

    .line 4176
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 4177
    .local v1, "numEvents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_22

    .line 4178
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4177
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 4182
    .end local v1    # "numEvents":I
    .end local v2    # "i":I
    :cond_22
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3f

    .line 4183
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 4184
    .restart local v1    # "numEvents":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2d
    if-ge v2, v1, :cond_3f

    .line 4185
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4184
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 4189
    .end local v1    # "numEvents":I
    .end local v2    # "i":I
    :cond_3f
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4670
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLastAccessBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4241
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4223
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4206
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastAccessTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4274
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4275
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4276
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4279
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastBackgroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4424
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastBackgroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 4502
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4391
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastDuration(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4445
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4446
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4447
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4450
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist getLastForegroundDuration(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4407
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastForegroundProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 4484
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(I)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 4
    .param p1, "flags"    # I

    .line 4467
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastProxyInfo(III)Landroid/app/AppOpsManager$OpEventProxyInfo;
    .registers 6
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4523
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4524
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_8

    .line 4525
    const/4 v1, 0x0

    return-object v1

    .line 4528
    :cond_8
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getProxy()Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getLastRejectBackgroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4331
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectForegroundTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4313
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(I)J
    .registers 4
    .param p1, "flags"    # I

    .line 4296
    const/16 v0, 0x64

    const/16 v1, 0x2bc

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getLastRejectTime(III)J
    .registers 7
    .param p1, "fromUidState"    # I
    .param p2, "toUidState"    # I
    .param p3, "flags"    # I

    .line 4370
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectEvent(III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v0

    .line 4371
    .local v0, "lastEvent":Landroid/app/AppOpsManager$NoteOpEvent;
    if-nez v0, :cond_9

    .line 4372
    const-wide/16 v1, -0x1

    return-wide v1

    .line 4375
    :cond_9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v1

    return-wide v1
.end method

.method blacklist getOp()I
    .registers 2

    .line 4537
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    return v0
.end method

.method blacklist getOpName()Ljava/lang/String;
    .registers 2

    .line 4533
    iget v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isRunning()Z
    .registers 2

    .line 4627
    iget-boolean v0, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4658
    const/4 v0, 0x0

    .line 4659
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRunning:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 4660
    :cond_8
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 4661
    :cond_f
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 4662
    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 4663
    iget v1, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mOp:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4664
    sget-object v1, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForAccessEvents:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mAccessEvents:Landroid/util/LongSparseArray;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 4665
    sget-object v1, Landroid/app/AppOpsManager$AttributedOpEntry;->sParcellingForRejectEvents:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedOpEntry;->mRejectEvents:Landroid/util/LongSparseArray;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 4666
    return-void
.end method
