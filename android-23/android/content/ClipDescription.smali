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

.field public static final MIMETYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"


# instance fields
.field final mLabel:Ljava/lang/CharSequence;

.field final mMimeTypes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 241
    new-instance v0, Landroid/content/ClipDescription$1;

    #@2
    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    #@5
    .line 240
    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;)V
    .locals 1
    .param p1, "o"    # Landroid/content/ClipDescription;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 83
    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@5
    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@7
    .line 84
    iget-object v0, p1, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@9
    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@b
    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 236
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
    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@13
    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    if-nez p2, :cond_0

    #@5
    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "mimeTypes is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 75
    :cond_0
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@10
    .line 76
    iput-object p2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@12
    .line 71
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
    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 95
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
    .line 96
    return v5

    #@13
    .line 99
    :cond_0
    const/16 v2, 0x2f

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v0

    #@19
    .line 100
    .local v0, "slashpos":I
    if-lez v0, :cond_2

    #@1b
    .line 101
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
    .line 102
    add-int/lit8 v2, v0, 0x1

    #@2b
    invoke-virtual {p1, v4, p0, v4, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 103
    return v5

    #@32
    .line 105
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_2

    #@38
    .line 106
    return v5

    #@39
    .line 110
    :cond_2
    return v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 226
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
    .line 145
    const/4 v0, 0x0

    #@2
    .line 146
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
    .line 147
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
    .line 148
    if-nez v0, :cond_0

    #@14
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 151
    :cond_0
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@1b
    aget-object v3, v3, v1

    #@1d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 154
    :cond_2
    if-nez v0, :cond_3

    #@25
    .line 155
    return-object v4

    #@26
    .line 157
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v3

    #@2a
    new-array v2, v3, [Ljava/lang/String;

    #@2c
    .line 158
    .local v2, "rawArray":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2f
    .line 159
    return-object v2
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 173
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
    .line 166
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
    .line 128
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
    .line 129
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
    .line 130
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 133
    :cond_1
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Z
    .locals 5
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v4, 0x22

    #@2
    const/16 v3, 0x20

    #@4
    .line 204
    const/4 v0, 0x1

    #@5
    .line 205
    .local v0, "first":Z
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@8
    array-length v2, v2

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 206
    if-nez v0, :cond_0

    #@d
    .line 207
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 209
    :cond_0
    const/4 v0, 0x0

    #@11
    .line 210
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@13
    aget-object v2, v2, v1

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 205
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 212
    :cond_1
    iget-object v2, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 213
    if-nez v0, :cond_2

    #@21
    .line 214
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 216
    :cond_2
    const/4 v0, 0x0

    #@25
    .line 217
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 218
    iget-object v2, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2d
    .line 219
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 221
    :cond_3
    if-eqz v0, :cond_4

    #@32
    const/4 v2, 0x0

    #@33
    :goto_1
    return v2

    #@34
    :cond_4
    const/4 v2, 0x1

    #@35
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 195
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipDescription { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 196
    invoke-virtual {p0, v0}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    #@10
    .line 197
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 199
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
    .line 178
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "null mime types"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 181
    :cond_0
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@f
    array-length v1, v1

    #@10
    if-gtz v1, :cond_1

    #@12
    .line 182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v2, "must have at least 1 mime type"

    #@17
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v1

    #@1b
    .line 184
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
    .line 185
    iget-object v1, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@23
    aget-object v1, v1, v0

    #@25
    if-nez v1, :cond_2

    #@27
    .line 186
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
    .line 184
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 177
    :cond_3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    #@2
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@5
    .line 232
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:[Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@a
    .line 230
    return-void
.end method
