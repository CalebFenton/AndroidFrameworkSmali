.class public Landroid/icu/text/ConstrainedFieldPosition;
.super Ljava/lang/Object;
.source "ConstrainedFieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist fClassConstraint:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private blacklist fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

.field private blacklist fContext:J

.field private blacklist fField:Ljava/text/Format$Field;

.field private blacklist fLimit:I

.field private blacklist fStart:I

.field private blacklist fValue:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 20
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/icu/text/ConstrainedFieldPosition;->reset()V

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist test-api constrainClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 156
    .local p1, "classConstraint":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_e

    .line 159
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->CLASS:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 160
    iput-object p1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 162
    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 163
    return-void

    .line 157
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot constrain on null field class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api constrainField(Ljava/text/Format$Field;)V
    .registers 4
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 125
    if-eqz p1, :cond_10

    .line 128
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->FIELD:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 129
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 130
    iput-object p1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 132
    return-void

    .line 126
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot constrain on null field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist constrainFieldAndValue(Ljava/text/Format$Field;Ljava/lang/Object;)V
    .registers 4
    .param p1, "field"    # Ljava/text/Format$Field;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->VALUE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 191
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 192
    iput-object p1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 193
    iput-object p2, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public whitelist test-api getField()Ljava/text/Format$Field;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    return-object v0
.end method

.method public whitelist test-api getFieldValue()Ljava/lang/Object;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getInt64IterationContext()J
    .registers 3

    .line 251
    iget-wide v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fContext:J

    return-wide v0
.end method

.method public whitelist test-api getLimit()I
    .registers 2

    .line 227
    iget v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fLimit:I

    return v0
.end method

.method public whitelist test-api getStart()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fStart:I

    return v0
.end method

.method public whitelist test-api matchesField(Ljava/text/Format$Field;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "field"    # Ljava/text/Format$Field;
    .param p2, "fieldValue"    # Ljava/lang/Object;

    .line 306
    if-eqz p1, :cond_33

    .line 309
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    invoke-virtual {v0}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_3c

    .line 320
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 318
    :pswitch_13
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    if-ne v0, p1, :cond_20

    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 315
    :pswitch_21
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    if-ne v0, p1, :cond_26

    move v1, v2

    :cond_26
    return v1

    .line 313
    :pswitch_27
    iget-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 311
    :pswitch_32
    return v2

    .line 307
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_27
        :pswitch_21
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 91
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->NONE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fConstraint:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 92
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fClassConstraint:Ljava/lang/Class;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 94
    iput-object v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fStart:I

    .line 96
    iput v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fLimit:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/text/ConstrainedFieldPosition;->fContext:J

    .line 98
    return-void
.end method

.method public whitelist test-api setInt64IterationContext(J)V
    .registers 3
    .param p1, "context"    # J

    .line 263
    iput-wide p1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fContext:J

    .line 264
    return-void
.end method

.method public whitelist test-api setState(Ljava/text/Format$Field;Ljava/lang/Object;II)V
    .registers 5
    .param p1, "field"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    .line 285
    if-eqz p1, :cond_3

    .line 286
    nop

    .line 289
    :cond_3
    iput-object p1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    .line 290
    iput-object p2, p0, Landroid/icu/text/ConstrainedFieldPosition;->fValue:Ljava/lang/Object;

    .line 291
    iput p3, p0, Landroid/icu/text/ConstrainedFieldPosition;->fStart:I

    .line 292
    iput p4, p0, Landroid/icu/text/ConstrainedFieldPosition;->fLimit:I

    .line 293
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CFPos["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget v1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    iget v1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Landroid/icu/text/ConstrainedFieldPosition;->fField:Ljava/text/Format$Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
