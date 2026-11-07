.class public final Landroid/view/textclassifier/TextLinks$Request;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mLegacyFallback:Z

.field private final blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLinks$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 575
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultLocales"    # Landroid/os/LocaleList;
    .param p3, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .param p4, "legacyFallback"    # Z
    .param p5, "referenceTime"    # Ljava/time/ZonedDateTime;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    .line 353
    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 354
    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 355
    iput-boolean p4, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    .line 356
    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 357
    iput-object p6, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    .line 358
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .registers 10
    .param p0, "in"    # Landroid/os/Parcel;

    .line 560
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "text":Ljava/lang/String;
    const-class v0, Landroid/os/LocaleList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    .line 562
    .local v0, "defaultLocales":Landroid/os/LocaleList;
    const-class v3, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 563
    .local v3, "entityConfig":Landroid/view/textclassifier/TextClassifier$EntityConfig;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 564
    .local v6, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, "referenceTimeString":Ljava/lang/String;
    if-nez v7, :cond_21

    .line 566
    move-object v5, v2

    goto :goto_26

    :cond_21
    invoke-static {v7}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v4

    move-object v5, v4

    .line 567
    .local v5, "referenceTime":Ljava/time/ZonedDateTime;
    :goto_26
    const-class v4, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 569
    .local v8, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    move-object v2, v0

    .end local v0    # "defaultLocales":Landroid/os/LocaleList;
    .local v2, "defaultLocales":Landroid/os/LocaleList;
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    .line 571
    .local v0, "request":Landroid/view/textclassifier/TextLinks$Request;
    invoke-virtual {v0, v8}, Landroid/view/textclassifier/TextLinks$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 572
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

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

    .line 374
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .registers 2

    .line 384
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 433
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o isLegacyFallback()Z
    .registers 2

    .line 394
    iget-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    return v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 423
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 424
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 551
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 554
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 555
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_24

    :cond_1e
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 557
    return-void
.end method
