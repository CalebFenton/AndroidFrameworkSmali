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

.field private mStructuredData:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 194
    new-instance v0, Landroid/app/assist/AssistContent$1;

    #@2
    invoke-direct {v0}, Landroid/app/assist/AssistContent$1;-><init>()V

    #@5
    .line 193
    sput-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@6
    .line 24
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@d
    .line 23
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
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 16
    iput-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@7
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 139
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/Intent;

    #@15
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@17
    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 142
    sget-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/content/ClipData;

    #@25
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@27
    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 145
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2f
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/net/Uri;

    #@35
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@37
    .line 147
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_3

    #@3d
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@43
    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v0

    #@47
    if-ne v0, v1, :cond_4

    #@49
    move v0, v1

    #@4a
    :goto_0
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@4c
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@52
    .line 137
    return-void

    #@53
    :cond_4
    move v0, v2

    #@54
    .line 150
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 185
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getStructuredData()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWebUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public isAppProvidedIntent()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@2
    return v0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 83
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@2
    .line 82
    return-void
.end method

.method public setDefaultIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 36
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@3
    .line 37
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    #@6
    .line 38
    if-eqz p1, :cond_1

    #@8
    const-string/jumbo v1, "android.intent.action.VIEW"

    #@b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    .line 40
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    #@1b
    .line 41
    const-string/jumbo v1, "http"

    #@1e
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-nez v1, :cond_0

    #@28
    const-string/jumbo v1, "https"

    #@2b
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/assist/AssistContent;->setWebUri(Landroid/net/Uri;)V

    #@38
    .line 35
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 55
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@3
    .line 56
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@5
    .line 54
    return-void
.end method

.method public setStructuredData(Ljava/lang/String;)V
    .locals 0
    .param p1, "structuredData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2
    .line 98
    return-void
.end method

.method public setWebUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@2
    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 190
    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistContent;->writeToParcelInternal(Landroid/os/Parcel;I)V

    #@3
    .line 189
    return-void
.end method

.method writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 155
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 157
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mIntent:Landroid/content/Intent;

    #@b
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@e
    .line 161
    :goto_0
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 163
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mClipData:Landroid/content/ClipData;

    #@17
    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 167
    :goto_1
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 169
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mUri:Landroid/net/Uri;

    #@23
    invoke-virtual {v2, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@26
    .line 173
    :goto_2
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@28
    if-eqz v2, :cond_3

    #@2a
    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 175
    iget-object v2, p0, Landroid/app/assist/AssistContent;->mStructuredData:Ljava/lang/String;

    #@2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 179
    :goto_3
    iget-boolean v2, p0, Landroid/app/assist/AssistContent;->mIsAppProvidedIntent:Z

    #@34
    if-eqz v2, :cond_4

    #@36
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 180
    iget-object v0, p0, Landroid/app/assist/AssistContent;->mExtras:Landroid/os/Bundle;

    #@3b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@3e
    .line 154
    return-void

    #@3f
    .line 159
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    goto :goto_0

    #@43
    .line 165
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    goto :goto_1

    #@47
    .line 171
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4a
    goto :goto_2

    #@4b
    .line 177
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4e
    goto :goto_3

    #@4f
    :cond_4
    move v0, v1

    #@50
    .line 179
    goto :goto_4
.end method
