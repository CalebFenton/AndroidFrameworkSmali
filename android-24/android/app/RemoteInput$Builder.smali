.class public final Landroid/app/RemoteInput$Builder;
.super Ljava/lang/Object;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mChoices:[Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "resultKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@6
    .line 135
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    .line 142
    if-nez p1, :cond_0

    #@f
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Result key can\'t be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 145
    :cond_0
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    #@1a
    .line 141
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 215
    if-eqz p2, :cond_0

    #@2
    .line 216
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@7
    .line 214
    :goto_0
    return-void

    #@8
    .line 218
    :cond_0
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 199
    if-eqz p1, :cond_0

    #@2
    .line 200
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@7
    .line 202
    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/RemoteInput;
    .locals 7

    #@0
    .prologue
    .line 227
    new-instance v0, Landroid/app/RemoteInput;

    #@2
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    #@6
    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    #@8
    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@a
    iget-object v5, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    #@c
    const/4 v6, 0x0

    #@d
    invoke-direct/range {v0 .. v6}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/app/RemoteInput;)V

    #@10
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "allowFreeFormInput"    # Z

    #@0
    .prologue
    .line 187
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    #@2
    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    #@5
    .line 188
    return-object p0
.end method

.method public setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 3
    .param p1, "choices"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 166
    if-nez p1, :cond_1

    #@3
    .line 167
    iput-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    #@5
    .line 174
    :cond_0
    return-object p0

    #@6
    .line 169
    :cond_1
    array-length v1, p1

    #@7
    new-array v1, v1, [Ljava/lang/CharSequence;

    #@9
    iput-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    #@b
    .line 170
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 171
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    #@11
    aget-object v2, p1, v0

    #@13
    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v1, v0

    #@19
    .line 170
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 154
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    #@6
    .line 155
    return-object p0
.end method
