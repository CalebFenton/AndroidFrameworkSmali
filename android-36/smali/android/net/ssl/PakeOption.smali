.class public final Landroid/net/ssl/PakeOption;
.super Ljava/lang/Object;
.source "PakeOption.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ssl/PakeOption$Builder;
    }
.end annotation


# static fields
.field private static final blacklist MAX_HANDSHAKE_LIMIT:I = 0x18


# instance fields
.field private final blacklist algorithm:Ljava/lang/String;

.field private final blacklist messageComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 57
    .local p2, "messageComponents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/net/ssl/PakeOption;->algorithm:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ssl/PakeOption;->messageComponents:Ljava/util/Map;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/Map;Landroid/net/ssl/PakeOption-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/ssl/PakeOption;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public whitelist getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/net/ssl/PakeOption;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMessageComponent(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Landroid/net/ssl/PakeOption;->messageComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
