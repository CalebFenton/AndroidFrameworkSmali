.class abstract Landroid/net/Uri$AbstractPart;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractPart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$AbstractPart$Representation;
    }
.end annotation


# instance fields
.field volatile decoded:Ljava/lang/String;

.field volatile encoded:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1959
    iput-object p1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    #@5
    .line 1960
    iput-object p2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@7
    .line 1958
    return-void
.end method


# virtual methods
.method final getDecoded()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1967
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    .line 1968
    .local v0, "hasDecoded":Z
    :goto_0
    if-eqz v0, :cond_1

    #@b
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@d
    :goto_1
    return-object v1

    #@e
    .line 1967
    .end local v0    # "hasDecoded":Z
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "hasDecoded":Z
    goto :goto_0

    #@10
    .line 1968
    :cond_1
    iget-object v1, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    #@12
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@18
    goto :goto_1
.end method

.method abstract getEncoded()Ljava/lang/String;
.end method

.method final writeTo(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1973
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    #@2
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    if-eq v2, v3, :cond_0

    #@8
    const/4 v1, 0x1

    #@9
    .line 1976
    .local v1, "hasEncoded":Z
    :goto_0
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@b
    invoke-static {}, Landroid/net/Uri;->-get1()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_1

    #@11
    const/4 v0, 0x1

    #@12
    .line 1978
    .local v0, "hasDecoded":Z
    :goto_1
    if-eqz v1, :cond_2

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 1979
    const/4 v2, 0x0

    #@17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1980
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1f
    .line 1981
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@21
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    .line 1971
    :goto_2
    return-void

    #@25
    .line 1973
    .end local v0    # "hasDecoded":Z
    .end local v1    # "hasEncoded":Z
    :cond_0
    const/4 v1, 0x0

    #@26
    .restart local v1    # "hasEncoded":Z
    goto :goto_0

    #@27
    .line 1976
    :cond_1
    const/4 v0, 0x0

    #@28
    .restart local v0    # "hasDecoded":Z
    goto :goto_1

    #@29
    .line 1982
    :cond_2
    if-eqz v1, :cond_3

    #@2b
    .line 1983
    const/4 v2, 0x1

    #@2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1984
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->encoded:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    goto :goto_2

    #@35
    .line 1985
    :cond_3
    if-eqz v0, :cond_4

    #@37
    .line 1986
    const/4 v2, 0x2

    #@38
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 1987
    iget-object v2, p0, Landroid/net/Uri$AbstractPart;->decoded:Ljava/lang/String;

    #@3d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@40
    goto :goto_2

    #@41
    .line 1989
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v3, "Neither encoded nor decoded"

    #@46
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v2
.end method
