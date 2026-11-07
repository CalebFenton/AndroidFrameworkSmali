.class Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
.super Ljava/util/Collections$UnmodifiableNavigableMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableNavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x1f13ab0182e3f294L


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 2198
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap<TK;TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/Collections$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 2205
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-$$Nest$sfgetEMPTY_NAVIGABLE_MAP()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2202
    .local p0, "this":Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;, "Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap<TK;TV;>;"
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
