.class public Landroid/app/assist/AssistContent;
.super Ljava/lang/Object;
.source "AssistContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/assist/AssistContent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/assist/AssistContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClipData:Landroid/content/ClipData;

.field private final mExtras:Landroid/os/Bundle;

.field private mIntent:Landroid/content/Intent;

.field private mIsAppProvidedIntent:Z

.field private mIsAppProvidedWebUri:Z

.field private mStructuredData:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 210
    new-instance v0, Landroid/app/assist/AssistContent$1;

    #@2
    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    #@5
    .line 209
    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 16
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@6
    .line 17
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@8
    .line 25
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@d
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@f
    .line 24
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 16
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@7
    .line 17
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@9
    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 153
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/content/Intent;

    #@17
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@19
    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_1

    #@1f
    .line 156
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/content/ClipData;

    #@27
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@29
    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_2

    #@2f
    .line 159
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/net/Uri;

    #@37
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@39
    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_3

    #@3f
    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@45
    .line 164
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v0

    #@49
    if-ne v0, v1, :cond_4

    #@4b
    move v0, v1

    #@4c
    :goto_0
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@4e
    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@54
    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    if-ne v0, v1, :cond_5

    #@5a
    :goto_1
    iput-boolean v1, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@5c
    .line 151
    return-void

    #@5d
    :cond_4
    move v0, v2

    #@5e
    .line 164
    goto :goto_0

    #@5f
    :cond_5
    move v1, v2

    #@60
    .line 166
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 201
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getStructuredData()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWebUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isAppProvidedIntent()Z
    .locals 1

    #@0
    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@2
    return v0
.end method

.method public isAppProvidedWebUri()Z
    .locals 1

    #@0
    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@2
    return v0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 86
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@2
    .line 85
    return-void
.end method

.method public setDefaultIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 37
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@4
    .line 38
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@6
    .line 39
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@8
    .line 40
    iput-object v1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@a
    .line 41
    if-eqz p1, :cond_1

    #@c
    const-string/jumbo v1, "android.intent.action.VIEW"

    #@f
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 42
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1c
    move-result-object v0

    #@1d
    .line 43
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    #@1f
    .line 44
    const-string/jumbo v1, "http"

    #@22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-nez v1, :cond_0

    #@2c
    const-string/jumbo v1, "https"

    #@2f
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_1

    #@39
    .line 45
    :cond_0
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@3b
    .line 36
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@3
    .line 59
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@5
    .line 57
    return-void
.end method

.method public setStructuredData(Ljava/lang/String;)V
    .locals 0
    .param p1, "structuredData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2
    .line 101
    return-void
.end method

.method public setWebUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 122
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@3
    .line 123
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@5
    .line 121
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 206
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 205
    return-void
.end method

.method writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 170
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 172
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 176
    :goto_0
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 178
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 182
    :goto_1
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 184
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@23
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 188
    :goto_2
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 189
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 190
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 194
    :goto_3
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@34
    if-eqz v0, :cond_4

    #@36
    move v0, v1

    #@37
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 195
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3f
    .line 196
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedWebUri:Z

    #@41
    if-eqz v0, :cond_5

    #@43
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 169
    return-void

    #@47
    .line 174
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    goto :goto_0

    #@4b
    .line 180
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_1

    #@4f
    .line 186
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    goto :goto_2

    #@53
    .line 192
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    goto :goto_3

    #@57
    :cond_4
    move v0, v2

    #@58
    .line 194
    goto :goto_4

    #@59
    :cond_5
    move v1, v2

    #@5a
    .line 196
    goto :goto_5
.end method
