.class abstract Landroid/icu/util/CodePointTrie$Data;
.super Ljava/lang/Object;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Data"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/CodePointTrie-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/util/CodePointTrie$Data;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist getDataLength()I
.end method

.method abstract blacklist getFromIndex(I)I
.end method

.method abstract blacklist getValueWidth()Landroid/icu/util/CodePointTrie$ValueWidth;
.end method

.method abstract blacklist write(Ljava/io/DataOutputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
