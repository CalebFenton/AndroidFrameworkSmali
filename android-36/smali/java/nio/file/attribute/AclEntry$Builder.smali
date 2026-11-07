.class public final Ljava/nio/file/attribute/AclEntry$Builder;
.super Ljava/lang/Object;
.source "AclEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/attribute/AclEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o flags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o type:Ljava/nio/file/attribute/AclEntryType;

.field private greylist-max-o who:Ljava/nio/file/attribute/UserPrincipal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    const-class v0, Ljava/nio/file/attribute/AclEntry;

    return-void
.end method

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

    .line 108
    .local p3, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    .local p4, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    nop

    .line 110
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 111
    iput-object p2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 112
    iput-object p3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 113
    iput-object p4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/file/attribute/AclEntry$Builder;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private static greylist-max-o checkSet(Ljava/util/Set;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 162
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, "e":Ljava/lang/Object;
    if-eqz v1, :cond_14

    .line 165
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "e":Ljava/lang/Object;
    goto :goto_4

    .line 164
    .restart local v1    # "e":Ljava/lang/Object;
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    .end local v1    # "e":Ljava/lang/Object;
    :cond_1a
    return-void
.end method


# virtual methods
.method public whitelist test-api build()Ljava/nio/file/attribute/AclEntry;
    .registers 8

    .line 127
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    if-eqz v0, :cond_1f

    .line 129
    iget-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    if-eqz v0, :cond_17

    .line 131
    new-instance v1, Ljava/nio/file/attribute/AclEntry;

    iget-object v2, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    iget-object v3, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    iget-object v4, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    iget-object v5, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/nio/file/attribute/AclEntry;-><init>(Ljava/nio/file/attribute/AclEntryType;Ljava/nio/file/attribute/UserPrincipal;Ljava/util/Set;Ljava/util/Set;Ljava/nio/file/attribute/AclEntry-IA;)V

    return-object v1

    .line 130
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing who component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing type component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setFlags(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryFlag;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .line 226
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_14

    .line 231
    :cond_b
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 232
    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    .line 235
    :goto_14
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 236
    return-object p0
.end method

.method public varargs whitelist test-api setFlags([Ljava/nio/file/attribute/AclEntryFlag;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6
    .param p1, "flags"    # [Ljava/nio/file/attribute/AclEntryFlag;

    .line 248
    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 250
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryFlag;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    .line 251
    .local v3, "f":Ljava/nio/file/attribute/AclEntryFlag;
    if-eqz v3, :cond_14

    .line 253
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v3    # "f":Ljava/nio/file/attribute/AclEntryFlag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 252
    .restart local v3    # "f":Ljava/nio/file/attribute/AclEntryFlag;
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 255
    .end local v3    # "f":Ljava/nio/file/attribute/AclEntryFlag;
    :cond_1a
    iput-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->flags:Ljava/util/Set;

    .line 256
    return-object p0
.end method

.method public whitelist test-api setPermissions(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/AclEntryPermission;",
            ">;)",
            "Ljava/nio/file/attribute/AclEntry$Builder;"
        }
    .end annotation

    .line 181
    .local p1, "perms":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_14

    .line 186
    :cond_b
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 187
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {p1, v0}, Ljava/nio/file/attribute/AclEntry$Builder;->checkSet(Ljava/util/Set;Ljava/lang/Class;)V

    .line 190
    :goto_14
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 191
    return-object p0
.end method

.method public varargs whitelist test-api setPermissions([Ljava/nio/file/attribute/AclEntryPermission;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 6
    .param p1, "perms"    # [Ljava/nio/file/attribute/AclEntryPermission;

    .line 203
    const-class v0, Ljava/nio/file/attribute/AclEntryPermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 205
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, p1, v2

    .line 206
    .local v3, "p":Ljava/nio/file/attribute/AclEntryPermission;
    if-eqz v3, :cond_14

    .line 208
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v3    # "p":Ljava/nio/file/attribute/AclEntryPermission;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 207
    .restart local v3    # "p":Ljava/nio/file/attribute/AclEntryPermission;
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 210
    .end local v3    # "p":Ljava/nio/file/attribute/AclEntryPermission;
    :cond_1a
    iput-object v0, p0, Ljava/nio/file/attribute/AclEntry$Builder;->perms:Ljava/util/Set;

    .line 211
    return-object p0
.end method

.method public whitelist test-api setPrincipal(Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .param p1, "who"    # Ljava/nio/file/attribute/UserPrincipal;

    .line 154
    if-eqz p1, :cond_5

    .line 156
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->who:Ljava/nio/file/attribute/UserPrincipal;

    .line 157
    return-object p0

    .line 155
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setType(Ljava/nio/file/attribute/AclEntryType;)Ljava/nio/file/attribute/AclEntry$Builder;
    .registers 3
    .param p1, "type"    # Ljava/nio/file/attribute/AclEntryType;

    .line 141
    if-eqz p1, :cond_5

    .line 143
    iput-object p1, p0, Ljava/nio/file/attribute/AclEntry$Builder;->type:Ljava/nio/file/attribute/AclEntryType;

    .line 144
    return-object p0

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
