.class public final Landroid/hardware/camera2/params/DynamicRangeProfiles;
.super Ljava/lang/Object;
.source "DynamicRangeProfiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/DynamicRangeProfiles$Profile;
    }
.end annotation


# static fields
.field public static final whitelist DOLBY_VISION_10B_HDR_OEM:J = 0x40L

.field public static final whitelist DOLBY_VISION_10B_HDR_OEM_PO:J = 0x80L

.field public static final whitelist DOLBY_VISION_10B_HDR_REF:J = 0x10L

.field public static final whitelist DOLBY_VISION_10B_HDR_REF_PO:J = 0x20L

.field public static final whitelist DOLBY_VISION_8B_HDR_OEM:J = 0x400L

.field public static final whitelist DOLBY_VISION_8B_HDR_OEM_PO:J = 0x800L

.field public static final whitelist DOLBY_VISION_8B_HDR_REF:J = 0x100L

.field public static final whitelist DOLBY_VISION_8B_HDR_REF_PO:J = 0x200L

.field public static final whitelist HDR10:J = 0x4L

.field public static final whitelist HDR10_PLUS:J = 0x8L

.field public static final whitelist HLG10:J = 0x2L

.field public static final whitelist PUBLIC_MAX:J = 0x1000L

.field public static final whitelist STANDARD:J = 0x1L


# instance fields
.field private final blacklist mLookahedLatencyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProfileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>([J)V
    .registers 13
    .param p1, "elements"    # [J

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    .line 199
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_dd

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    array-length v1, p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    if-ge v0, v1, :cond_80

    .line 205
    aget-wide v5, p1, v0

    invoke-static {v5, v6}, Landroid/hardware/camera2/params/DynamicRangeProfiles;->checkProfileValue(J)V

    .line 207
    aget-wide v5, p1, v0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_78

    .line 211
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v1, "profiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_52

    .line 214
    const-wide/16 v7, 0x1

    .local v7, "profile":J
    :goto_3a
    const-wide/16 v9, 0x1000

    cmp-long v3, v7, v9

    if-gez v3, :cond_52

    .line 215
    add-int/lit8 v3, v0, 0x1

    aget-wide v9, p1, v3

    and-long/2addr v9, v7

    cmp-long v3, v9, v5

    if-eqz v3, :cond_50

    .line 216
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_50
    shl-long/2addr v7, v4

    goto :goto_3a

    .line 221
    .end local v7    # "profile":J
    :cond_52
    iget-object v3, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    aget-wide v7, p1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v3, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    aget-wide v7, p1, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    add-int/lit8 v8, v0, 0x2

    aget-wide v8, p1, v8

    cmp-long v5, v8, v5

    if-eqz v5, :cond_6e

    move v2, v4

    :cond_6e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .end local v1    # "profiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    add-int/lit8 v0, v0, 0x3

    goto :goto_17

    .line 208
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Dynamic range profile map must not include a STANDARD profile entry!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    .end local v0    # "i":I
    :cond_80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 227
    .local v0, "standardConstraints":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_96
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 229
    .local v5, "profile":Ljava/lang/Long;
    iget-object v6, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c2

    iget-object v6, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 230
    :cond_c2
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v5    # "profile":Ljava/lang/Long;
    :cond_c5
    goto :goto_96

    .line 234
    :cond_c6
    iget-object v1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void

    .line 200
    .end local v0    # "standardConstraints":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dynamic range profile map length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not even!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkProfileValue(J)V
    .registers 5
    .param p0, "profile"    # J

    .line 243
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x4

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x8

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x20

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x40

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x100

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x200

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-eqz v0, :cond_62

    const-wide/16 v0, 0x800

    cmp-long v0, p0, v0

    if-nez v0, :cond_49

    goto :goto_62

    .line 250
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_62
    :goto_62
    return-void
.end method


# virtual methods
.method public whitelist getProfileCaptureRequestConstraints(J)Ljava/util/Set;
    .registers 6
    .param p1, "profile"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 290
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_13

    .line 294
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 291
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported profile!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSupportedProfiles()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mProfileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isExtraLatencyPresent(J)Z
    .registers 6
    .param p1, "profile"    # J

    .line 315
    iget-object v0, p0, Landroid/hardware/camera2/params/DynamicRangeProfiles;->mLookahedLatencyMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 316
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_13

    .line 320
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 317
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported profile!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
