.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o MIMETYPES_TEXT_HTML:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final greylist-max-o MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "ClipData"


# instance fields
.field final greylist-max-o mClipDescription:Landroid/content/ClipDescription;

.field final greylist-max-o mIcon:Landroid/graphics/Bitmap;

.field final greylist-max-o mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcelItemActivityInfos:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    const-string/jumbo v0, "text/plain"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "text/html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    .line 178
    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 180
    const-string/jumbo v0, "text/vnd.android.intent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    .line 1422
    new-instance v0, Landroid/content/ClipData$1;

    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipData;)V
    .registers 4
    .param p1, "other"    # Landroid/content/ClipData;

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iget-object v0, p1, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 934
    iget-object v0, p1, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 936
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .registers 5
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 899
    if-eqz p2, :cond_20

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 903
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 904
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 906
    return-void

    .line 900
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V
    .registers 5
    .param p1, "description"    # Landroid/content/ClipDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipDescription;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipData$Item;",
            ">;)V"
        }
    .end annotation

    .line 917
    .local p2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 919
    if-eqz p2, :cond_d

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 923
    iput-object p2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 924
    return-void

    .line 920
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 1400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1401
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_1e

    .line 1403
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 1405
    :goto_1e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1407
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    if-ge v1, v0, :cond_79

    .line 1408
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    .line 1409
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    .line 1410
    .local v5, "htmlText":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/Intent;

    .line 1411
    .local v6, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/IntentSender;

    .line 1412
    .local v7, "intentSender":Landroid/content/IntentSender;
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/net/Uri;

    .line 1413
    .local v8, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 1414
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    sget-object v3, Landroid/view/textclassifier/TextLinks;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/view/textclassifier/TextLinks;

    .line 1415
    .local v10, "textLinks":Landroid/view/textclassifier/TextLinks;
    new-instance v3, Landroid/content/ClipData$Item;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/content/IntentSender;Landroid/net/Uri;Landroid/content/ClipData-IA;)V

    .line 1416
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3, v2}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 1417
    invoke-virtual {v3, v10}, Landroid/content/ClipData$Item;->setTextLinks(Landroid/view/textclassifier/TextLinks;)V

    .line 1418
    iget-object v9, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "htmlText":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "intentSender":Landroid/content/IntentSender;
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "textLinks":Landroid/view/textclassifier/TextLinks;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1420
    .end local v1    # "i":I
    :cond_79
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .registers 6
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "item"    # Landroid/content/ClipData$Item;

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 882
    if-eqz p3, :cond_25

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 887
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 889
    return-void

    .line 883
    :cond_25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "mimeTypes":[Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1054
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "realType":Ljava/lang/String;
    const-string v2, "*/*"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1056
    if-eqz v1, :cond_34

    .line 1057
    if-nez v0, :cond_21

    .line 1058
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_34

    .line 1059
    :cond_21
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 1060
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 1061
    .local v2, "tmp":[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 1062
    array-length v5, v0

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1063
    move-object v0, v2

    .line 1067
    .end local v1    # "realType":Ljava/lang/String;
    .end local v2    # "tmp":[Ljava/lang/String;
    :cond_34
    :goto_34
    if-nez v0, :cond_38

    .line 1068
    sget-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 1070
    :cond_38
    return-object v0
.end method

.method private blacklist isStyledText()Z
    .registers 5

    .line 1259
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1260
    return v1

    .line 1262
    :cond_a
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1263
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_25

    .line 1264
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    .line 1265
    .local v2, "spanned":Landroid/text/Spanned;
    invoke-static {v2}, Landroid/text/TextUtils;->hasStyleSpan(Landroid/text/Spanned;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1266
    const/4 v1, 0x1

    return v1

    .line 1269
    .end local v2    # "spanned":Landroid/text/Spanned;
    :cond_25
    return v1
.end method

.method public static whitelist newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;
    .registers 6
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    .line 1009
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1010
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .registers 5
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1022
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 1023
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .registers 5
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 993
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 994
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .registers 5
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1085
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 1086
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static whitelist newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1039
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 1040
    .local v0, "item":Landroid/content/ClipData$Item;
    invoke-static {p0, p2}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, "mimeTypes":[Ljava/lang/String;
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v2
.end method


# virtual methods
.method public whitelist addItem(Landroid/content/ClipData$Item;)V
    .registers 4
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .line 1106
    if-eqz p1, :cond_1a

    .line 1109
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 1111
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-direct {p0}, Landroid/content/ClipData;->isStyledText()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->setIsStyledText(Z)V

    .line 1113
    :cond_19
    return-void

    .line 1107
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 1124
    invoke-virtual {p0, p2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 1126
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1127
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    goto :goto_1e

    .line 1128
    :cond_11
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1129
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1132
    :cond_1e
    :goto_1e
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1133
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1136
    :cond_2b
    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1137
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/ClipData;->getMimeTypes(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->addMimeTypes([Ljava/lang/String;)V

    .line 1139
    :cond_3e
    return-void
.end method

.method public blacklist cloneOnlyUriItems()Landroid/content/ClipData;
    .registers 7

    .line 964
    const/4 v0, 0x0

    .line 965
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ClipData$Item;>;"
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 966
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_4e

    .line 967
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData$Item;

    .line 968
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 969
    if-nez v0, :cond_20

    .line 970
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 972
    :cond_20
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 973
    :cond_2d
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 974
    if-nez v0, :cond_3b

    .line 975
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 977
    :cond_3b
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->cloneForCreatorToken()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    .end local v3    # "item":Landroid/content/ClipData$Item;
    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 980
    .end local v2    # "i":I
    :cond_4e
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_67

    .line 981
    :cond_57
    new-instance v2, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipDescription;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v3, v5, v4}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Ljava/util/ArrayList;)V

    return-object v2

    .line 980
    :cond_67
    :goto_67
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-o collectUris(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1345
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 1346
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 1348
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1349
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_1a
    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1353
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_3a

    .line 1354
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1355
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    :cond_2d
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 1358
    invoke-virtual {v2}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 1345
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1362
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method public blacklist copyForTransferWithActivityInfo()Landroid/content/ClipData;
    .registers 3

    .line 943
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, p0}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    .line 944
    .local v0, "copy":Landroid/content/ClipData;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    .line 945
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1372
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1325
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1327
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    if-eqz v2, :cond_12

    .line 1328
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ClipDescription;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1330
    :cond_12
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3e

    .line 1331
    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1332
    .local v2, "iToken":J
    iget-object v4, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const-wide v5, 0x10500000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1333
    iget-object v4, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const-wide v5, 0x10500000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1334
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1336
    .end local v2    # "iToken":J
    :cond_3e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5a

    .line 1337
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData$Item;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ClipData$Item;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1336
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 1340
    .end local v2    # "i":I
    :cond_5a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1341
    return-void
.end method

.method public greylist-max-o fixUris(I)V
    .registers 6
    .param p1, "contentUserHint"    # I

    .line 1225
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1226
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_29

    .line 1227
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1228
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1a

    .line 1229
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->fixUris(I)V

    .line 1231
    :cond_1a
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_26

    .line 1232
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 1226
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1235
    .end local v1    # "i":I
    :cond_29
    return-void
.end method

.method public greylist-max-o fixUrisLight(I)V
    .registers 8
    .param p1, "contentUserHint"    # I

    .line 1243
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1244
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_35

    .line 1245
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1246
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_26

    .line 1247
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1248
    .local v3, "data":Landroid/net/Uri;
    if-eqz v3, :cond_26

    .line 1249
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1252
    .end local v3    # "data":Landroid/net/Uri;
    :cond_26
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_32

    .line 1253
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    .line 1244
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1256
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method public whitelist getDescription()Landroid/content/ClipDescription;
    .registers 2

    .line 1094
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public greylist getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 1144
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getItemAt(I)Landroid/content/ClipData$Item;
    .registers 3
    .param p1, "index"    # I

    .line 1159
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    return-object v0
.end method

.method public whitelist getItemCount()I
    .registers 2

    .line 1151
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist prepareToEnterProcess(Landroid/content/AttributionSource;)V
    .registers 7
    .param p1, "source"    # Landroid/content/AttributionSource;

    .line 1211
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1212
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 1213
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1214
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1b

    .line 1217
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->prepareToEnterProcess(ZLandroid/content/AttributionSource;)V

    .line 1212
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1220
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(Z)V
    .registers 3
    .param p1, "leavingPackage"    # Z

    .line 1175
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 1176
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(ZI)V
    .registers 8
    .param p1, "leavingPackage"    # Z
    .param p2, "intentFlags"    # I

    .line 1185
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1186
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3c

    .line 1187
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1188
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1b

    .line 1189
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 1191
    :cond_1b
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_39

    if-eqz p1, :cond_39

    .line 1192
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v3

    const-string v4, "ClipData.Item.getUri()"

    if-eqz v3, :cond_2e

    .line 1193
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    .line 1195
    :cond_2e
    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1196
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, p2}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    .line 1186
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1201
    .end local v1    # "i":I
    :cond_3c
    return-void
.end method

.method public blacklist prepareToLeaveProcess$ravenwood(ZI)V
    .registers 3
    .param p1, "leavingPackage"    # Z
    .param p2, "intentFlags"    # I

    .line 1206
    return-void
.end method

.method public greylist-max-o setItemAt(ILandroid/content/ClipData$Item;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "item"    # Landroid/content/ClipData$Item;

    .line 1164
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1165
    return-void
.end method

.method blacklist setTokenVerificationEnabled()V
    .registers 3

    .line 1365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1366
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData$Item;

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->setTokenVerificationEnabled()V

    .line 1365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1368
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)V
    .registers 7
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "redactContent"    # Z

    .line 1290
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 1291
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    .local v0, "first":Z
    goto :goto_e

    .line 1293
    .end local v0    # "first":Z
    :cond_d
    const/4 v0, 0x1

    .line 1295
    .restart local v0    # "first":Z
    :goto_e
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    const/16 v3, 0x20

    if-eqz v2, :cond_36

    .line 1296
    if-nez v0, :cond_19

    .line 1297
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1299
    :cond_19
    const/4 v0, 0x0

    .line 1300
    const-string v2, "I:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1302
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1303
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1305
    :cond_36
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v1, :cond_53

    .line 1306
    if-nez v0, :cond_43

    .line 1307
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1309
    :cond_43
    const/4 v0, 0x0

    .line 1310
    iget-object v1, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    :cond_53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_54
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 1313
    if-nez v0, :cond_61

    .line 1314
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    :cond_61
    const/4 v0, 0x0

    .line 1317
    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1318
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 1319
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 1321
    .end local v1    # "i":I
    :cond_7a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1276
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "ClipData { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 1278
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist willParcelWithActivityInfo()Z
    .registers 2

    .line 953
    iget-boolean v0, p0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1377
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1378
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 1382
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1384
    :goto_17
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1385
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_5b

    .line 1387
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 1388
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1389
    iget-object v3, v2, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1390
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1391
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntentSender:Landroid/content/IntentSender;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1392
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1393
    iget-boolean v3, p0, Landroid/content/ClipData;->mParcelItemActivityInfos:Z

    if-eqz v3, :cond_4d

    invoke-static {v2}, Landroid/content/ClipData$Item;->-$$Nest$fgetmActivityInfo(Landroid/content/ClipData$Item;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1394
    invoke-static {v2}, Landroid/content/ClipData$Item;->-$$Nest$fgetmTextLinks(Landroid/content/ClipData$Item;)Landroid/view/textclassifier/TextLinks;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1386
    .end local v2    # "item":Landroid/content/ClipData$Item;
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1396
    .end local v1    # "i":I
    :cond_5b
    return-void
.end method
