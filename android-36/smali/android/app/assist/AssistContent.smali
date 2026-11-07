.class public Landroid/app/assist/AssistContent;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/assist/AssistContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_APP_FUNCTION_DATA:Ljava/lang/String; = "android.app.assist.extra.APP_FUNCTION_DATA"


# instance fields
.field private greylist-max-p mClipData:Landroid/content/ClipData;

.field private final greylist-max-p mExtras:Landroid/os/Bundle;

.field private greylist-max-p mIntent:Landroid/content/Intent;

.field private greylist-max-p mIsAppProvidedIntent:Z

.field private greylist-max-o mIsAppProvidedWebUri:Z

.field private blacklist mSessionTransferUri:Landroid/net/Uri;

.field private greylist-max-p mStructuredData:Ljava/lang/String;

.field private greylist-max-p mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 290
    new-instance v0, Landroid/app/assist/AssistContent$1;

    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 36
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 36
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 59
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 36
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    .line 224
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 226
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_28

    .line 227
    sget-object v1, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 229
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_38

    .line 230
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 232
    :cond_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_48

    .line 233
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mSessionTransferUri:Landroid/net/Uri;

    .line 235
    :cond_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_54

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 238
    :cond_54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    move v1, v2

    goto :goto_5e

    :cond_5d
    move v1, v0

    :goto_5e
    iput-boolean v1, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6d

    move v0, v2

    :cond_6d
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 241
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getSessionTransferUri()Landroid/net/Uri;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mSessionTransferUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getStructuredData()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWebUri()Landroid/net/Uri;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isAppProvidedIntent()Z
    .registers 2

    .line 112
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    return v0
.end method

.method public whitelist isAppProvidedWebUri()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    return v0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;)V
    .registers 2
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 121
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    .line 122
    return-void
.end method

.method public greylist-max-o setDefaultIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 74
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 76
    if-eqz p1, :cond_3a

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 78
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_3a

    .line 79
    const-string/jumbo v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string/jumbo v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 80
    :cond_38
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 84
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3a
    return-void
.end method

.method public whitelist setIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    .line 94
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public whitelist setSessionTransferUri(Landroid/net/Uri;)V
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 201
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mSessionTransferUri:Landroid/net/Uri;

    .line 202
    return-void
.end method

.method public whitelist setStructuredData(Ljava/lang/String;)V
    .registers 2
    .param p1, "structuredData"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public whitelist setWebUri(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    .line 158
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    .line 159
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 288
    return-void
.end method

.method greylist-max-p writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 245
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 246
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 249
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    :goto_12
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1f

    .line 252
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 255
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    :goto_22
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2f

    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_32

    .line 261
    :cond_2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_32
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mSessionTransferUri:Landroid/net/Uri;

    if-eqz v0, :cond_3f

    .line 264
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mSessionTransferUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_42

    .line 267
    :cond_3f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    :goto_42
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 270
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_52

    .line 273
    :cond_4f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    :goto_52
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 277
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    return-void
.end method
