.class Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Ljdk/internal/math/FloatingDecimal$BinaryToASCIIConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionalBinaryToASCIIBuffer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist image:Ljava/lang/String;

.field private blacklist isNegative:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 189
    const-class v0, Ljdk/internal/math/FloatingDecimal;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "image"    # Ljava/lang/String;
    .param p2, "isNegative"    # Z

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    .line 195
    iput-boolean p2, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->isNegative:Z

    .line 196
    return-void
.end method


# virtual methods
.method public blacklist appendTo(Ljava/lang/Appendable;)V
    .registers 4
    .param p1, "buf"    # Ljava/lang/Appendable;

    .line 205
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_d

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 207
    :cond_d
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1a

    .line 208
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 210
    :cond_1a
    nop

    .line 212
    :goto_1b
    return-void
.end method

.method public blacklist decimalDigitsExact()Z
    .registers 3

    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceptional value is not exact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist digitsRoundedUp()Z
    .registers 3

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceptional value is not rounded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDecimalExponent()I
    .registers 3

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceptional value does not have an exponent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDigits([C)I
    .registers 4
    .param p1, "digits"    # [C

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exceptional value does not have digits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isExceptional()Z
    .registers 2

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isNegative()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->isNegative:Z

    return v0
.end method

.method public blacklist toJavaFormatString()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Ljdk/internal/math/FloatingDecimal$ExceptionalBinaryToASCIIBuffer;->image:Ljava/lang/String;

    return-object v0
.end method
