.class public final Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
.super Ljava/lang/Object;
.source "InputMethodSubtypeHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$RawHandle;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DATA_SEPARATOR:C = ':'

.field private static final blacklist SUBTYPE_TAG:Ljava/lang/String; = "subtype"


# instance fields
.field private final blacklist mHandle:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 225
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "handle"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private static blacklist encodeHandle(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "imeId"    # Ljava/lang/String;
    .param p1, "subtypeHashCode"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "subtype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .registers 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 100
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 101
    .local v0, "subtypeHashCode":I
    :goto_8
    new-instance v1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->encodeHandle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist of(Ljava/lang/String;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    .registers 10
    .param p0, "stringHandle"    # Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 117
    .local v0, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    const-string v2, "Invalid handle="

    if-eqz v1, :cond_11d

    .line 121
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "imeId":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 123
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_106

    .line 127
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 130
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 133
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "source":Ljava/lang/String;
    const-string/jumbo v5, "subtype"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 137
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 140
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "hashCodeStr":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-nez v6, :cond_93

    .line 146
    :try_start_4f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_53} :catch_7b

    .line 149
    .local v6, "subtypeHashCode":I
    nop

    .line 152
    invoke-static {v1, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->encodeHandle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 156
    new-instance v2, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-direct {v2, p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 153
    :cond_64
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    .end local v6    # "subtypeHashCode":I
    :catch_7b
    move-exception v6

    .line 148
    .local v6, "ignore":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/security/InvalidParameterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    .end local v6    # "ignore":Ljava/lang/NumberFormatException;
    :cond_93
    new-instance v6, Ljava/security/InvalidParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    .end local v5    # "hashCodeStr":Ljava/lang/String;
    :cond_aa
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 135
    :cond_c1
    new-instance v5, Ljava/security/InvalidParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    .end local v4    # "source":Ljava/lang/String;
    :cond_d8
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_ef
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_106
    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    .end local v1    # "imeId":Ljava/lang/String;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_11d
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 196
    instance-of v0, p1, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    if-nez v0, :cond_6

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 200
    .local v0, "that":Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;
    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getImeId()Ljava/lang/String;
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodSubtypeHandle{mHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toStringHandle()Ljava/lang/String;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->mHandle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->toStringHandle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 253
    return-void
.end method
