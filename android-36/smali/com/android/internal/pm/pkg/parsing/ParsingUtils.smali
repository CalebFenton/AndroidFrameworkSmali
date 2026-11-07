.class public Lcom/android/internal/pm/pkg/parsing/ParsingUtils;
.super Ljava/lang/Object;
.source "ParsingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/pm/pkg/parsing/ParsingUtils$StringPairListParceler;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final blacklist DEFAULT_MAX_SDK_VERSION:I = 0x7fffffff

.field public static final blacklist DEFAULT_MIN_SDK_VERSION:I = 0x1

.field public static final blacklist DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field public static final blacklist NOT_SET:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "PackageParsing"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;

    .line 60
    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_3f

    .line 63
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "cls":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 65
    .local v1, "c":C
    const/16 v2, 0x2e

    if-ne v1, v2, :cond_28

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 68
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3e

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 74
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_3e
    return-object v0

    .line 61
    .end local v0    # "cls":Ljava/lang/String;
    .end local v1    # "c":C
    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createTypedInterfaceList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
    .registers 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Interface:",
            "Ljava/lang/Object;",
            "Impl:TInterface;>(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TImpl;>;)",
            "Ljava/util/List<",
            "TInterface;>;"
        }
    .end annotation

    .line 99
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TImpl;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "size":I
    if-gez v0, :cond_c

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 103
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TInterface;>;"
    :goto_11
    if-lez v0, :cond_1d

    .line 105
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 108
    :cond_1d
    return-object v1
.end method

.method public static blacklist parseKnownActivityEmbeddingCerts(Landroid/content/res/TypedArray;Landroid/content/res/Resources;ILandroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .param p0, "sa"    # Landroid/content/res/TypedArray;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/Resources;",
            "I",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 183
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 186
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 187
    .local v0, "knownActivityEmbeddingCertsResource":I
    if-eqz v0, :cond_4a

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "knownEmbeddingCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "resourceType":Ljava/lang/String;
    const-string v3, "array"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "knownCerts":[Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 197
    invoke-static {v3}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 199
    .end local v3    # "knownCerts":[Ljava/lang/String;
    :cond_2a
    goto :goto_35

    .line 200
    :cond_2b
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "knownCert":Ljava/lang/String;
    if-eqz v3, :cond_35

    .line 202
    invoke-static {v3}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 205
    .end local v3    # "knownCert":Ljava/lang/String;
    :cond_35
    :goto_35
    if-eqz v1, :cond_43

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_43

    .line 209
    :cond_3e
    invoke-interface {p3, v1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 206
    :cond_43
    :goto_43
    const-string v3, "Defined a knownActivityEmbeddingCerts attribute but the provided resource is null"

    invoke-interface {p3, v3}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v3

    return-object v3

    .line 214
    .end local v1    # "knownEmbeddingCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "resourceType":Ljava/lang/String;
    :cond_4a
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "knownCert":Ljava/lang/String;
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_60

    .line 219
    :cond_57
    invoke-static {v1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p3, v2}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2

    .line 216
    :cond_60
    :goto_60
    const-string v2, "Defined a knownActivityEmbeddingCerts attribute but the provided string is empty"

    invoke-interface {p3, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist unknownTag(Ljava/lang/String;Lcom/android/internal/pm/pkg/parsing/ParsingPackage;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .param p0, "parentTag"    # Ljava/lang/String;
    .param p1, "pkg"    # Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "input"    # Landroid/content/pm/parsing/result/ParseInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/parsing/ParsingPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "PackageParsing"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 87
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 121
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_7

    .line 122
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void

    .line 125
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 126
    .local v0, "size":I
    const/4 v1, 0x0

    .line 127
    .local v1, "index":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    :goto_f
    if-ge v1, v0, :cond_1e

    .line 129
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 132
    :cond_1e
    return-void
.end method
