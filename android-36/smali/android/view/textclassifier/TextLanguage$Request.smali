.class public final Landroid/view/textclassifier/TextLanguage$Request;
.super Ljava/lang/Object;
.source "TextLanguage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLanguage$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLanguage$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;
    .registers 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLanguage$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 214
    new-instance v0, Landroid/view/textclassifier/TextLanguage$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLanguage$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLanguage$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    .line 232
    iput-object p2, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    .line 233
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 298
    .local v1, "extra":Landroid/os/Bundle;
    const/4 v2, 0x0

    const-class v3, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 300
    .local v2, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    new-instance v3, Landroid/view/textclassifier/TextLanguage$Request;

    invoke-direct {v3, v0, v1}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 301
    .local v3, "request":Landroid/view/textclassifier/TextLanguage$Request;
    invoke-virtual {v3, v2}, Landroid/view/textclassifier/TextLanguage$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 302
    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 260
    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 261
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 290
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    return-void
.end method
