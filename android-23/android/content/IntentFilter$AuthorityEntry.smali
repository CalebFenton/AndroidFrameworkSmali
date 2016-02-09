.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOrigHost:Ljava/lang/String;

.field private final mPort:I

.field private final mWild:Z


# direct methods
.method static synthetic -get0(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/content/IntentFilter$AuthorityEntry;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@2
    return v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    #@a
    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@10
    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    const/4 v0, 0x1

    #@17
    :cond_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@19
    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@1f
    .line 850
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 844
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    #@7
    .line 845
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-lez v2, :cond_0

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v2

    #@11
    const/16 v3, 0x2a

    #@13
    if-ne v2, v3, :cond_0

    #@15
    move v0, v1

    #@16
    :cond_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@18
    .line 846
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@1a
    if-eqz v0, :cond_1

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@23
    move-result-object p1

    #@24
    .end local p1    # "host":Ljava/lang/String;
    :cond_1
    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@26
    .line 847
    if-eqz p2, :cond_2

    #@28
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b
    move-result v0

    #@2c
    :goto_0
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@2e
    .line 843
    return-void

    #@2f
    .line 847
    :cond_2
    const/4 v0, -0x1

    #@30
    goto :goto_0
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 869
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@2
    return v0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 4
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 897
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 898
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 899
    return v3

    #@8
    .line 903
    :cond_0
    iget-boolean v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 904
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-ge v1, v2, :cond_1

    #@18
    .line 905
    return v3

    #@19
    .line 907
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@1f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@22
    move-result v2

    #@23
    sub-int/2addr v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    .line 909
    :cond_2
    iget-object v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    .line 910
    return v3

    #@31
    .line 912
    :cond_3
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@33
    if-ltz v1, :cond_5

    #@35
    .line 913
    iget v1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@37
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    #@3a
    move-result v2

    #@3b
    if-eq v1, v2, :cond_4

    #@3d
    .line 914
    return v3

    #@3e
    .line 916
    :cond_4
    const/high16 v1, 0x400000

    #@40
    return v1

    #@41
    .line 918
    :cond_5
    const/high16 v1, 0x300000

    #@43
    return v1
.end method

.method public match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 3
    .param p1, "other"    # Landroid/content/IntentFilter$AuthorityEntry;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 874
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@3
    iget-boolean v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 875
    return v2

    #@8
    .line 877
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@a
    iget-object v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1

    #@12
    .line 878
    return v2

    #@13
    .line 880
    :cond_1
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@15
    iget v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@17
    if-eq v0, v1, :cond_2

    #@19
    .line 881
    return v2

    #@1a
    .line 883
    :cond_2
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 859
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 860
    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 861
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 857
    return-void

    #@18
    .line 860
    :cond_0
    const/4 v0, 0x0

    #@19
    goto :goto_0
.end method
