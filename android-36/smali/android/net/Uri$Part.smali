.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final greylist-max-o EMPTY:Landroid/net/Uri$Part;

.field static final greylist-max-o NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2079
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2082
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .line 2085
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static greylist-max-o from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    .line 2133
    if-nez p0, :cond_5

    .line 2134
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    .line 2136
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2137
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    .line 2140
    :cond_e
    if-nez p1, :cond_13

    .line 2141
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    .line 2143
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2144
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    .line 2147
    :cond_1c
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static greylist-max-o fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "decoded"    # Ljava/lang/String;

    .line 2120
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "encoded"    # Ljava/lang/String;

    .line 2111
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "part"    # Landroid/net/Uri$Part;

    .line 2102
    if-nez p0, :cond_5

    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method


# virtual methods
.method greylist-max-o getEncoded()Ljava/lang/String;
    .registers 3

    .line 2094
    iget-object v0, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2095
    .local v0, "hasEncoded":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    goto :goto_16

    :cond_e
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    :goto_16
    return-object v1
.end method

.method greylist-max-o isEmpty()Z
    .registers 2

    .line 2089
    const/4 v0, 0x0

    return v0
.end method
