.class Lcom/android/org/conscrypt/NativeCrypto$Range;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field public final blacklist max:Ljava/lang/String;

.field public final blacklist min:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1157
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeCrypto$Range;->min:Ljava/lang/String;

    .line 1158
    iput-object p2, p0, Lcom/android/org/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    .line 1159
    return-void
.end method
