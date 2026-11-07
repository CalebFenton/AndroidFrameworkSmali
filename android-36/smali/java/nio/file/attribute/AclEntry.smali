.class public final Ljava/nio/file/attribute/AclEntry;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/attribute/AclEntry$Builder;
    }
.end annotation


# instance fields
.field private final greylist-max-o flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o hash:I

.field private final greylist-max-o perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o type:Ljava/nio/file/attribute/AclEntryType;

.field private final greylist-max-o who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;
    .param p2, "who"    # Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/attribute/AclEntryType;",
            "Ljava/nio/file/attribute/UserPrincipal;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 81
    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 82
    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    .line 83
    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    .line 84
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static greylist-max-o hash(ILjava/lang/Object;)I
    .registers 4
    .param p0, "h"    # I
    .param p1, "o"    # Ljava/lang/Object;

    .line 360
    mul-int/lit8 v0, p0, 0x7f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static whitelist test-api newBuilder()Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 269
    .local v3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 270
    .local v4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry-IA;)V

    return-object v0
.end method

.method public static whitelist test-api newBuilder(Ljava/nio/file/attribute/AclEntry;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 7
    .param p0, "entry"    # Ljava/nio/file/attribute/AclEntry;

    .line 280
    new-instance v0, Ljava/nio/file/attribute/AclEntry$Builder;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "ob"    # Ljava/lang/Object;

    .line 343
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 344
    return v0

    .line 345
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    instance-of v2, p1, Ljava/nio/file/attribute/AclEntry;

    if-nez v2, :cond_c

    goto :goto_38

    .line 347
    :cond_c
    move-object v2, p1

    check-cast v2, Ljava/nio/file/attribute/AclEntry;

    .line 348
    .local v2, "other":Ljava/nio/file/attribute/AclEntry;
    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v4, v2, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    if-eq v3, v4, :cond_16

    .line 349
    return v1

    .line 350
    :cond_16
    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v4, v2, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 351
    return v1

    .line 352
    :cond_21
    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    iget-object v4, v2, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 353
    return v1

    .line 354
    :cond_2c
    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    iget-object v4, v2, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 355
    return v1

    .line 356
    :cond_37
    return v0

    .line 346
    .end local v2    # "other":Ljava/nio/file/attribute/AclEntry;
    :cond_38
    :goto_38
    return v1
.end method

.method public whitelist test-api flags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 372
    iget v0, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    if-eqz v0, :cond_7

    .line 373
    iget v0, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v0

    .line 374
    :cond_7
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v0}, Ljava/nio/file/attribute/AclEntryType;->hashCode()I

    move-result v0

    .line 375
    .local v0, "h":I
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 376
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 377
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/nio/file/attribute/AclEntry;->hash(ILjava/lang/Object;)I

    move-result v0

    .line 378
    iput v0, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    .line 379
    iget v1, p0, Ljava/nio/file/attribute/AclEntry;->hash:I

    return v1
.end method

.method public whitelist test-api permissions()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api principal()Ljava/nio/file/attribute/UserPrincipal;
    .registers 2

    .line 298
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->who:Ljava/nio/file/attribute/UserPrincipal;

    invoke-interface {v1}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->perms:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x2f

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/attribute/AclEntryPermission;

    .line 397
    .local v3, "perm":Ljava/nio/file/attribute/AclEntryPermission;
    invoke-virtual {v3}, Ljava/nio/file/attribute/AclEntryPermission;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    .end local v3    # "perm":Ljava/nio/file/attribute/AclEntryPermission;
    goto :goto_19

    .line 400
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 405
    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry;->flags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/attribute/AclEntryFlag;

    .line 406
    .local v3, "flag":Ljava/nio/file/attribute/AclEntryFlag;
    invoke-virtual {v3}, Ljava/nio/file/attribute/AclEntryFlag;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    .end local v3    # "flag":Ljava/nio/file/attribute/AclEntryFlag;
    goto :goto_4c

    .line 409
    :cond_63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_6f
    iget-object v1, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    invoke-virtual {v1}, Ljava/nio/file/attribute/AclEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api type()Ljava/nio/file/attribute/AclEntryType;
    .registers 2

    .line 289
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry;->type:Ljava/nio/file/attribute/AclEntryType;

    return-object v0
.end method
