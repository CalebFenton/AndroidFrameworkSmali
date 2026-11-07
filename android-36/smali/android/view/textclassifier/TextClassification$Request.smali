.class public final Landroid/view/textclassifier/TextClassification$Request;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mStartIndex:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextClassification$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 731
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;
    .param p5, "referenceTime"    # Ljava/time/ZonedDateTime;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    .line 531
    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    .line 532
    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    .line 533
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 534
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 535
    iput-object p6, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    .line 536
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .registers 10
    .param p0, "in"    # Landroid/os/Parcel;

    .line 715
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    .line 716
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 717
    .local v2, "startIndex":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 718
    .local v3, "endIndex":I
    const-class v0, Landroid/os/LocaleList;

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    .line 719
    .local v0, "defaultLocales":Landroid/os/LocaleList;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 720
    .local v7, "referenceTimeString":Ljava/lang/String;
    if-nez v7, :cond_1d

    .line 721
    move-object v5, v4

    goto :goto_21

    :cond_1d
    invoke-static {v7}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 722
    .local v5, "referenceTime":Ljava/time/ZonedDateTime;
    :goto_21
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 723
    .local v6, "extras":Landroid/os/Bundle;
    const-class v8, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v4, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 725
    .local v8, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    move-object v4, v0

    .end local v0    # "defaultLocales":Landroid/os/LocaleList;
    .local v4, "defaultLocales":Landroid/os/LocaleList;
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request;

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    .line 727
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    invoke-virtual {v0, v8}, Landroid/view/textclassifier/TextClassification$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 728
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 587
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

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

    .line 569
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getEndIndex()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .registers 2

    .line 578
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist getStartIndex()I
    .registers 2

    .line 552
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 608
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 598
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 599
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 705
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 706
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 709
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 711
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 712
    return-void
.end method
