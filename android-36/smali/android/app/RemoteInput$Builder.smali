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
.field private final greylist-max-o mAllowedDataTypes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChoices:[Ljava/lang/CharSequence;

.field private blacklist mEditChoicesBeforeSending:I

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mResultKey:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "resultKey"    # Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    .line 230
    if-eqz p1, :cond_1c

    .line 233
    iput-object p1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    .line 234
    return-void

    .line 231
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result key can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 350
    if-eqz p2, :cond_8

    .line 351
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    goto :goto_e

    .line 353
    :cond_8
    iget v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    .line 355
    :goto_e
    return-void
.end method


# virtual methods
.method public whitelist addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 333
    if-eqz p1, :cond_7

    .line 334
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 336
    :cond_7
    return-object p0
.end method

.method public whitelist build()Landroid/app/RemoteInput;
    .registers 10

    .line 363
    new-instance v0, Landroid/app/RemoteInput;

    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mResultKey:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    iget v4, p0, Landroid/app/RemoteInput$Builder;->mFlags:I

    iget v5, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    iget-object v6, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;IILandroid/os/Bundle;Landroid/util/ArraySet;Landroid/app/RemoteInput-IA;)V

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist setAllowDataType(Ljava/lang/String;Z)Landroid/app/RemoteInput$Builder;
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "doAllow"    # Z

    .line 287
    if-eqz p2, :cond_8

    .line 288
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 290
    :cond_8
    iget-object v0, p0, Landroid/app/RemoteInput$Builder;->mAllowedDataTypes:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 292
    :goto_d
    return-object p0
.end method

.method public whitelist setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "allowFreeFormTextInput"    # Z

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/RemoteInput$Builder;->setFlag(IZ)V

    .line 308
    return-object p0
.end method

.method public whitelist setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .registers 5
    .param p1, "choices"    # [Ljava/lang/CharSequence;

    .line 262
    if-nez p1, :cond_6

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    goto :goto_1c

    .line 265
    :cond_6
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 267
    iget-object v1, p0, Landroid/app/RemoteInput$Builder;->mChoices:[Ljava/lang/CharSequence;

    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 270
    .end local v0    # "i":I
    :cond_1c
    :goto_1c
    return-object p0
.end method

.method public whitelist setEditChoicesBeforeSending(I)Landroid/app/RemoteInput$Builder;
    .registers 2
    .param p1, "editChoicesBeforeSending"    # I

    .line 320
    iput p1, p0, Landroid/app/RemoteInput$Builder;->mEditChoicesBeforeSending:I

    .line 321
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 244
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInput$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 245
    return-object p0
.end method
