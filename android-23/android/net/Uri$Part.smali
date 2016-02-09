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
.field static final EMPTY:Landroid/net/Uri$Part;

.field static final NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 2001
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    #@6
    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@8
    .line 2004
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    #@a
    const-string/jumbo v1, ""

    #@d
    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    #@12
    .line 1998
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2007
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 2006
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Part;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2070
    if-nez p0, :cond_0

    #@2
    .line 2071
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@4
    return-object v0

    #@5
    .line 2073
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 2074
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    #@d
    return-object v0

    #@e
    .line 2077
    :cond_1
    if-nez p1, :cond_2

    #@10
    .line 2078
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@12
    return-object v0

    #@13
    .line 2080
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_3

    #@19
    .line 2081
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    #@1b
    return-object v0

    #@1c
    .line 2084
    :cond_3
    new-instance v0, Landroid/net/Uri$Part;

    #@1e
    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    return-object v0
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .param p0, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2057
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1
    .param p0, "encoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2048
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method static nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .locals 0
    .param p0, "part"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    .line 2039
    if-nez p0, :cond_0

    #@2
    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@4
    .end local p0    # "part":Landroid/net/Uri$Part;
    :cond_0
    return-object p0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .locals 4
    .param p0, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2021
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2022
    .local v0, "representation":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 2030
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Unknown representation: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 2024
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-static {v1, v2}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 2026
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 2028
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3e
    move-result-object v1

    #@3f
    return-object v1

    #@40
    .line 2022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 2016
    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 2017
    .local v0, "hasEncoded":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 2016
    .end local v0    # "hasEncoded":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "hasEncoded":Z
    goto :goto_0

    #@10
    .line 2017
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    #@12
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    #@18
    goto :goto_1
.end method

.method isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2011
    const/4 v0, 0x0

    #@1
    return v0
.end method
