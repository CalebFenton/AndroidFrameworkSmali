.class public final Lcom/android/phone/ecc/nano/InternalNano;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field static final blacklist ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final blacklist LAZY_INIT_LOCK:Ljava/lang/Object;

.field static final blacklist UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 70
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ecc/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/phone/ecc/nano/InternalNano;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/ecc/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist cloneUnknownFieldData(Lcom/android/phone/ecc/nano/ExtendableMessageNano;Lcom/android/phone/ecc/nano/ExtendableMessageNano;)V
    .registers 2

    .line 543
    iget-object p0, p0, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    if-eqz p0, :cond_a

    .line 544
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/FieldArray;->clone()Lcom/android/phone/ecc/nano/FieldArray;

    move-result-object p0

    iput-object p0, p1, Lcom/android/phone/ecc/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/phone/ecc/nano/FieldArray;

    :cond_a
    return-void
.end method
