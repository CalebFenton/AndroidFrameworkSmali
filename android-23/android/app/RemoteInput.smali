.class public final Landroid/app/RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteInput$Builder;,
        Landroid/app/RemoteInput$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FLAGS:I = 0x1

.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final FLAG_ALLOW_FREE_FORM_INPUT:I = 0x1

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"


# instance fields
.field private final mChoices:[Ljava/lang/CharSequence;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFlags:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mResultKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 300
    new-instance v0, Landroid/app/RemoteInput$1;

    #@2
    invoke-direct {v0}, Landroid/app/RemoteInput$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@9
    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@f
    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@15
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/app/RemoteInput;->mFlags:I

    #@1b
    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@21
    .line 231
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/RemoteInput;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/RemoteInput;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "flags"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-object p1, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@5
    .line 82
    iput-object p2, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 83
    iput-object p3, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@9
    .line 84
    iput p4, p0, Landroid/app/RemoteInput;->mFlags:I

    #@b
    .line 85
    iput-object p5, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@d
    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/app/RemoteInput;)V
    .locals 0
    .param p1, "resultKey"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "choices"    # [Ljava/lang/CharSequence;
    .param p4, "flags"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public static addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 274
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 275
    .local v3, "resultsBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    #@6
    array-length v5, p0

    #@7
    :goto_0
    if-ge v4, v5, :cond_1

    #@9
    aget-object v1, p0, v4

    #@b
    .line 276
    .local v1, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 277
    .local v2, "result":Ljava/lang/Object;
    instance-of v6, v2, Ljava/lang/CharSequence;

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 278
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    check-cast v2, Ljava/lang/CharSequence;

    #@1d
    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@20
    .line 275
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 281
    .end local v1    # "remoteInput":Landroid/app/RemoteInput;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@25
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@28
    .line 282
    .local v0, "clipIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.remoteinput.resultsData"

    #@2b
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@2e
    .line 283
    const-string/jumbo v4, "android.remoteinput.results"

    #@31
    invoke-static {v4, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@38
    .line 273
    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 247
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@4
    move-result-object v0

    #@5
    .line 248
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_0

    #@7
    .line 249
    return-object v4

    #@8
    .line 251
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@b
    move-result-object v1

    #@c
    .line 252
    .local v1, "clipDescription":Landroid/content/ClipDescription;
    const-string/jumbo v2, "text/vnd.android.intent"

    #@f
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 253
    return-object v4

    #@16
    .line 255
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "android.remoteinput.results"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 256
    const/4 v2, 0x0

    #@24
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "android.remoteinput.resultsData"

    #@33
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/os/Bundle;

    #@39
    return-object v2

    #@3a
    .line 258
    :cond_2
    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 288
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAllowFreeFormInput()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    iget v1, p0, Landroid/app/RemoteInput;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/app/RemoteInput;->mResultKey:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 294
    iget-object v0, p0, Landroid/app/RemoteInput;->mLabel:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a
    .line 295
    iget-object v0, p0, Landroid/app/RemoteInput;->mChoices:[Ljava/lang/CharSequence;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    #@f
    .line 296
    iget v0, p0, Landroid/app/RemoteInput;->mFlags:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 297
    iget-object v0, p0, Landroid/app/RemoteInput;->mExtras:Landroid/os/Bundle;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@19
    .line 292
    return-void
.end method
