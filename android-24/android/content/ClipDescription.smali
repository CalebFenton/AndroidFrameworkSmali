.class public Landroid/content/ClipDescription;
.super Ljava/lang/Object;
.source "ClipDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipDescription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_TARGET_COMPONENT_NAME:Ljava/lang/String; = "android.content.extra.TARGET_COMPONENT_NAME"

.field public static final EXTRA_USER_SERIAL_NUMBER:Ljava/lang/String; = "android.content.extra.USER_SERIAL_NUMBER"

.field public static final MIMETYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"


# instance fields
.field private mExtras:Landroid/os/PersistableBundle;

.field final mLabel:Ljava/lang/CharSequence;

.field final mMimeTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 307
    new-instance v0, Landroid/content/ClipDescription$1;

    #@2
    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    #@5
    .line 306
    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;)V
    .locals 1
    .param p1, "o"    # Landroid/content/ClipDescription;

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 113
    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 114
    iget-object v0, p1, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@b
    .line 112
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 301
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/CharSequence;

    #@b
    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@d
    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@13
    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@19
    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 102
    if-nez p2, :cond_0

    #@5
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "mimeTypes is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 105
    :cond_0
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@10
    .line 106
    iput-object p2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@12
    .line 101
    return-void
.end method

.method public static compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "concreteType"    # Ljava/lang/String;
    .param p1, "desiredType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 125
    .local v1, "typeLength":I
    const/4 v2, 0x3

    #@7
    if-ne v1, v2, :cond_0

    #@9
    const-string/jumbo v2, "*/*"

    #@c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 126
    return v5

    #@13
    .line 129
    :cond_0
    const/16 v2, 0x2f

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v0

    #@19
    .line 130
    .local v0, "slashpos":I
    if-lez v0, :cond_2

    #@1b
    .line 131
    add-int/lit8 v2, v0, 0x2

    #@1d
    if-ne v1, v2, :cond_1

    #@1f
    add-int/lit8 v2, v0, 0x1

    #@21
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v2

    #@25
    const/16 v3, 0x2a

    #@27
    if-ne v2, v3, :cond_1

    #@29
    .line 132
    add-int/lit8 v2, v0, 0x1

    #@2b
    invoke-virtual {p1, v4, p0, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 133
    return v5

    #@32
    .line 135
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 136
    return v5

    #@39
    .line 140
    :cond_2
    return v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 290
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 175
    const/4 v0, 0x0

    #@2
    .line 176
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@3
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@5
    array-length v3, v3

    #@6
    if-ge v1, v3, :cond_2

    #@8
    .line 177
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@a
    aget-object v3, v3, v1

    #@c
    invoke-static {v3, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 178
    if-nez v0, :cond_0

    #@14
    .line 179
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 181
    :cond_0
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@1b
    aget-object v3, v3, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 176
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 184
    :cond_2
    if-nez v0, :cond_3

    #@25
    .line 185
    return-object v4

    #@26
    .line 187
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    new-array v2, v3, [Ljava/lang/String;

    #@2c
    .line 188
    .local v2, "rawArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    .line 189
    return-object v2
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getMimeTypeCount()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public hasMimeType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 159
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-static {v1, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 160
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 163
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public setExtras(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 224
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    #@5
    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@7
    .line 223
    return-void
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Z
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v3, 0x22

    #@2
    const/16 v2, 0x20

    #@4
    .line 255
    invoke-virtual {p0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_4

    #@a
    const/4 v0, 0x0

    #@b
    .line 256
    .local v0, "first":Z
    :goto_0
    iget-object v1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 257
    if-nez v0, :cond_0

    #@11
    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    .line 260
    :cond_0
    const/4 v0, 0x0

    #@15
    .line 261
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 262
    iget-object v1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@1a
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1d
    .line 263
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 265
    :cond_1
    iget-object v1, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 266
    if-nez v0, :cond_2

    #@26
    .line 267
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@29
    .line 269
    :cond_2
    const/4 v0, 0x0

    #@2a
    .line 270
    iget-object v1, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@2c
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 272
    :cond_3
    if-eqz v0, :cond_5

    #@35
    const/4 v1, 0x0

    #@36
    :goto_1
    return v1

    #@37
    .line 255
    .end local v0    # "first":Z
    :cond_4
    const/4 v0, 0x1

    #@38
    .restart local v0    # "first":Z
    goto :goto_0

    #@39
    .line 272
    :cond_5
    const/4 v1, 0x1

    #@3a
    goto :goto_1
.end method

.method public toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 277
    const/4 v0, 0x1

    #@1
    .line 278
    .local v0, "first":Z
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-ge v1, v2, :cond_1

    #@7
    .line 279
    if-nez v0, :cond_0

    #@9
    .line 280
    const/16 v2, 0x20

    #@b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    .line 282
    :cond_0
    const/4 v0, 0x0

    #@f
    .line 283
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@11
    aget-object v2, v2, v1

    #@13
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 278
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 285
    :cond_1
    if-eqz v0, :cond_2

    #@1b
    const/4 v2, 0x0

    #@1c
    :goto_1
    return v2

    #@1d
    :cond_2
    const/4 v2, 0x1

    #@1e
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 246
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipDescription { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 247
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    #@10
    .line 248
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public validate()V
    .locals 4

    #@0
    .prologue
    .line 229
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "null mime types"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 232
    :cond_0
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@f
    array-length v1, v1

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "must have at least 1 mime type"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 235
    :cond_1
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@1e
    array-length v1, v1

    #@1f
    if-ge v0, v1, :cond_3

    #@21
    .line 236
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@23
    aget-object v1, v1, v0

    #@25
    if-nez v1, :cond_2

    #@27
    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, "mime type at "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v3, " is null"

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 228
    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@5
    .line 296
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a
    .line 297
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@f
    .line 294
    return-void
.end method
