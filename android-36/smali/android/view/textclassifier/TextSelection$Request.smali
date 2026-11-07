.class public final Landroid/view/textclassifier/TextSelection$Request;
.super Ljava/lang/Object;
.source "TextSelection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextSelection$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDarkLaunchAllowed:Z

.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mIncludeTextClassification:Z

.field private final greylist-max-o mStartIndex:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextSelection$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 503
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextSelection$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextSelection$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;
    .param p5, "darkLaunchAllowed"    # Z
    .param p6, "includeTextClassification"    # Z
    .param p7, "extras"    # Landroid/os/Bundle;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    .line 275
    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    .line 276
    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    .line 277
    iput-object p4, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 278
    iput-boolean p5, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    .line 279
    iput-boolean p6, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    .line 280
    iput-object p7, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    .line 281
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;Landroid/view/textclassifier/TextSelection-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextSelection$Request;
    .registers 10
    .param p0, "in"    # Landroid/os/Parcel;

    .line 489
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    .line 490
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "startIndex":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 492
    .local v3, "endIndex":I
    const-class v0, Landroid/os/LocaleList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    .line 493
    .local v0, "defaultLocales":Landroid/os/LocaleList;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 494
    .local v7, "extras":Landroid/os/Bundle;
    const-class v5, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 495
    .local v8, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 497
    .local v6, "includeTextClassification":Z
    move-object v4, v0

    .end local v0    # "defaultLocales":Landroid/os/LocaleList;
    .local v4, "defaultLocales":Landroid/os/LocaleList;
    new-instance v0, Landroid/view/textclassifier/TextSelection$Request;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;)V

    .line 499
    .local v0, "request":Landroid/view/textclassifier/TextSelection$Request;
    invoke-virtual {v0, v8}, Landroid/view/textclassifier/TextSelection$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 500
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getDefaultLocales()Landroid/os/LocaleList;
    .registers 2

    .line 324
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getEndIndex()I
    .registers 2

    .line 305
    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 372
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStartIndex()I
    .registers 2

    .line 297
    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o isDarkLaunchAllowed()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDarkLaunchAllowed:Z

    return v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 344
    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 345
    return-void
.end method

.method public whitelist shouldIncludeTextClassification()Z
    .registers 2

    .line 362
    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 479
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 480
    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 483
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 484
    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 485
    iget-boolean v0, p0, Landroid/view/textclassifier/TextSelection$Request;->mIncludeTextClassification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    return-void
.end method
