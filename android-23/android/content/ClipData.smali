.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item;,
        Landroid/content/ClipData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final MIMETYPES_TEXT_HTML:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_URILIST:[Ljava/lang/String;


# instance fields
.field final mClipDescription:Landroid/content/ClipDescription;

.field final mIcon:Landroid/graphics/Bitmap;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 152
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 153
    const-string/jumbo v1, "text/plain"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 152
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    #@b
    .line 154
    new-array v0, v3, [Ljava/lang/String;

    #@d
    .line 155
    const-string/jumbo v1, "text/html"

    #@10
    aput-object v1, v0, v2

    #@12
    .line 154
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    #@14
    .line 156
    new-array v0, v3, [Ljava/lang/String;

    #@16
    .line 157
    const-string/jumbo v1, "text/uri-list"

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 156
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@1d
    .line 158
    new-array v0, v3, [Ljava/lang/String;

    #@1f
    .line 159
    const-string/jumbo v1, "text/vnd.android.intent"

    #@22
    aput-object v1, v0, v2

    #@24
    .line 158
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    #@26
    .line 941
    new-instance v0, Landroid/content/ClipData$1;

    #@28
    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    #@2b
    .line 940
    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;)V
    .locals 2
    .param p1, "other"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 654
    iget-object v0, p1, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@5
    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@7
    .line 655
    iget-object v0, p1, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@9
    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@b
    .line 656
    new-instance v0, Ljava/util/ArrayList;

    #@d
    iget-object v1, p1, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@12
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@14
    .line 653
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 638
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@6
    .line 639
    if-nez p2, :cond_0

    #@8
    .line 640
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "item is null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 642
    :cond_0
    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@13
    .line 643
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1a
    .line 644
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 637
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 923
    new-instance v6, Landroid/content/ClipDescription;

    #@5
    invoke-direct {v6, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    #@8
    iput-object v6, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@a
    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 925
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Landroid/graphics/Bitmap;

    #@18
    iput-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@1a
    .line 929
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v6, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    .line 931
    .local v0, "N":I
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@28
    .line 932
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Ljava/lang/CharSequence;

    #@30
    .line 933
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 934
    .local v1, "htmlText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Landroid/content/Intent;

    #@42
    .line 935
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroid/net/Uri;

    #@50
    .line 936
    :goto_3
    iget-object v6, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@52
    new-instance v7, Landroid/content/ClipData$Item;

    #@54
    invoke-direct {v7, v4, v1, v3, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@57
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 931
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 927
    .end local v0    # "N":I
    .end local v1    # "htmlText":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v6, 0x0

    #@5e
    iput-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@60
    goto :goto_0

    #@61
    .line 934
    .restart local v0    # "N":I
    .restart local v1    # "htmlText":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    #@62
    .local v3, "intent":Landroid/content/Intent;
    goto :goto_2

    #@63
    .line 935
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    #@64
    .local v5, "uri":Landroid/net/Uri;
    goto :goto_3

    #@65
    .line 922
    .end local v1    # "htmlText":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 622
    new-instance v0, Landroid/content/ClipDescription;

    #@6
    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    #@9
    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@b
    .line 623
    if-nez p3, :cond_0

    #@d
    .line 624
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "item is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 626
    :cond_0
    iput-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@18
    .line 627
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1f
    .line 628
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 621
    return-void
.end method

.method public static newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 684
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    #@5
    .line 685
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 697
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    #@5
    .line 698
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 668
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 669
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 753
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@5
    .line 754
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 714
    new-instance v1, Landroid/content/ClipData$Item;

    #@5
    invoke-direct {v1, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@8
    .line 715
    .local v1, "item":Landroid/content/ClipData$Item;
    const/4 v2, 0x0

    #@9
    .line 716
    .local v2, "mimeTypes":[Ljava/lang/String;
    const-string/jumbo v7, "content"

    #@c
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v7

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 717
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    .line 718
    .local v3, "realType":Ljava/lang/String;
    const-string/jumbo v7, "*/*"

    #@1d
    invoke-virtual {p0, p2, v7}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 719
    .local v2, "mimeTypes":[Ljava/lang/String;
    if-nez v2, :cond_2

    #@23
    .line 720
    if-eqz v3, :cond_0

    #@25
    .line 721
    new-array v2, v5, [Ljava/lang/String;

    #@27
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    aput-object v3, v2, v9

    #@29
    const-string/jumbo v5, "text/uri-list"

    #@2c
    aput-object v5, v2, v6

    #@2e
    .line 735
    .end local v3    # "realType":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@30
    .line 736
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@32
    .line 738
    :cond_1
    new-instance v5, Landroid/content/ClipData;

    #@34
    invoke-direct {v5, p1, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@37
    return-object v5

    #@38
    .line 724
    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v3    # "realType":Ljava/lang/String;
    :cond_2
    array-length v7, v2

    #@39
    if-eqz v3, :cond_4

    #@3b
    :goto_1
    add-int/2addr v5, v7

    #@3c
    new-array v4, v5, [Ljava/lang/String;

    #@3e
    .line 725
    .local v4, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    #@3f
    .line 726
    .local v0, "i":I
    if-eqz v3, :cond_3

    #@41
    .line 727
    aput-object v3, v4, v9

    #@43
    .line 728
    const/4 v0, 0x1

    #@44
    .line 730
    :cond_3
    array-length v5, v2

    #@45
    invoke-static {v2, v9, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@48
    .line 731
    array-length v5, v2

    #@49
    add-int/2addr v5, v0

    #@4a
    const-string/jumbo v6, "text/uri-list"

    #@4d
    aput-object v6, v4, v5

    #@4f
    .line 732
    move-object v2, v4

    #@50
    goto :goto_0

    #@51
    .end local v0    # "i":I
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_4
    move v5, v6

    #@52
    .line 724
    goto :goto_1
.end method


# virtual methods
.method public addItem(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    .line 769
    if-nez p1, :cond_0

    #@2
    .line 770
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "item is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 772
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 768
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 889
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public fixUris(I)V
    .locals 4
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 815
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 816
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@9
    .line 817
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/content/ClipData$Item;

    #@11
    .line 818
    .local v1, "item":Landroid/content/ClipData$Item;
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 819
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v3, p1}, Landroid/content/Intent;->fixUris(I)V

    #@1a
    .line 821
    :cond_0
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 822
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@20
    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@23
    move-result-object v3

    #@24
    iput-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@26
    .line 816
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 814
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public fixUrisLight(I)V
    .locals 6
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 832
    iget-object v4, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 833
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@9
    .line 834
    iget-object v4, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/ClipData$Item;

    #@11
    .line 835
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 836
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1a
    move-result-object v0

    #@1b
    .line 837
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@1d
    .line 838
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@1f
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@26
    .line 841
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    iget-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 842
    iget-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@2c
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@2f
    move-result-object v4

    #@30
    iput-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@32
    .line 833
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 831
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    #@0
    .prologue
    .line 762
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 777
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getItemAt(I)Landroid/content/ClipData$Item;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 792
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/ClipData$Item;

    #@8
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    #@0
    .prologue
    .line 784
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public prepareToLeaveProcess()V
    .locals 5

    #@0
    .prologue
    .line 801
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 802
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@9
    .line 803
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/content/ClipData$Item;

    #@11
    .line 804
    .local v1, "item":Landroid/content/ClipData$Item;
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 805
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@1a
    .line 807
    :cond_0
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    .line 808
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@26
    const-string/jumbo v4, "ClipData.Item.getUri()"

    #@29
    invoke-virtual {v3, v4}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@2c
    .line 802
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 800
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 861
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@4
    if-eqz v2, :cond_4

    #@6
    .line 862
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@8
    invoke-virtual {v2, p1}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_3

    #@e
    const/4 v0, 0x0

    #@f
    .line 866
    .local v0, "first":Z
    :goto_0
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 867
    if-nez v0, :cond_0

    #@15
    .line 868
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 870
    :cond_0
    const/4 v0, 0x0

    #@19
    .line 871
    const-string/jumbo v2, "I:"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 872
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@24
    move-result v2

    #@25
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 873
    const/16 v2, 0x78

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 874
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@2f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@32
    move-result v2

    #@33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    .line 876
    :cond_1
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v2

    #@3d
    if-ge v1, v2, :cond_5

    #@3f
    .line 877
    if-nez v0, :cond_2

    #@41
    .line 878
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 880
    :cond_2
    const/4 v0, 0x0

    #@45
    .line 881
    const/16 v2, 0x7b

    #@47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 882
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    check-cast v2, Landroid/content/ClipData$Item;

    #@52
    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    #@55
    .line 883
    const/16 v2, 0x7d

    #@57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 876
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 862
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    #@5e
    .restart local v0    # "first":Z
    goto :goto_0

    #@5f
    .line 864
    .end local v0    # "first":Z
    :cond_4
    const/4 v0, 0x1

    #@60
    .restart local v0    # "first":Z
    goto :goto_0

    #@61
    .line 859
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 851
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipData { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 852
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 853
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 894
    iget-object v3, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@4
    invoke-virtual {v3, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 895
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 896
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 897
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@10
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    .line 901
    :goto_0
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    .line 902
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 903
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@1f
    .line 904
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/ClipData$Item;

    #@27
    .line 905
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@29
    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2c
    .line 906
    iget-object v3, v2, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    .line 907
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 908
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 909
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@3a
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 913
    :goto_2
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 914
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 915
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@46
    invoke-virtual {v3, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@49
    .line 903
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 899
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_0

    #@50
    .line 911
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    goto :goto_2

    #@54
    .line 917
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    goto :goto_3

    #@58
    .line 893
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_3
    return-void
.end method
