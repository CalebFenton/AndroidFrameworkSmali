.class public final Landroid/os/StatsDimensionsValue;
.super Ljava/lang/Object;
.source "StatsDimensionsValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist BOOLEAN_VALUE_TYPE:I = 0x5

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLOAT_VALUE_TYPE:I = 0x6

.field public static final whitelist INT_VALUE_TYPE:I = 0x3

.field public static final whitelist LONG_VALUE_TYPE:I = 0x4

.field public static final whitelist STRING_VALUE_TYPE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "StatsDimensionsValue"

.field public static final whitelist TUPLE_VALUE_TYPE:I = 0x7


# instance fields
.field private final blacklist mInner:Landroid/os/StatsDimensionsValueParcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 275
    new-instance v0, Landroid/os/StatsDimensionsValue$1;

    invoke-direct {v0}, Landroid/os/StatsDimensionsValue$1;-><init>()V

    sput-object v0, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Landroid/os/StatsDimensionsValueParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StatsDimensionsValueParcel;

    iput-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/StatsDimensionsValueParcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/StatsDimensionsValueParcel;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    .line 93
    return-void
.end method

.method private blacklist getValueTypeAsString()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    packed-switch v0, :pswitch_data_1c

    .line 314
    const-string v0, "unknown"

    return-object v0

    .line 312
    :pswitch_a
    const-string v0, "tuple"

    return-object v0

    .line 310
    :pswitch_d
    const-string v0, "float"

    return-object v0

    .line 308
    :pswitch_10
    const-string v0, "boolean"

    return-object v0

    .line 306
    :pswitch_13
    const-string v0, "long"

    return-object v0

    .line 304
    :pswitch_16
    const-string v0, "int"

    return-object v0

    .line 302
    :pswitch_19
    const-string v0, "string"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBooleanValue()Z
    .registers 3

    .line 154
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 155
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-boolean v0, v0, Landroid/os/StatsDimensionsValueParcel;->boolValue:Z

    return v0

    .line 157
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not boolean."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getField()I
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->field:I

    return v0
.end method

.method public whitelist getFloatValue()F
    .registers 3

    .line 168
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 169
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->floatValue:F

    return v0

    .line 171
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not float."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIntValue()I
    .registers 3

    .line 125
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 126
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->intValue:I

    return v0

    .line 128
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not int."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLongValue()J
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 140
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-wide v0, v0, Landroid/os/StatsDimensionsValueParcel;->longValue:J

    return-wide v0

    .line 142
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not long."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getStringValue()Ljava/lang/String;
    .registers 3

    .line 111
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 112
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v0, v0, Landroid/os/StatsDimensionsValueParcel;->stringValue:Ljava/lang/String;

    return-object v0

    .line 114
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not string."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTupleValueList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/StatsDimensionsValue;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2e

    .line 186
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v0, v0, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_14

    :cond_f
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v0, v0, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    array-length v0, v0

    .line 187
    .local v0, "length":I
    :goto_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    .local v1, "tupleValues":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsDimensionsValue;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_2d

    .line 189
    new-instance v3, Landroid/os/StatsDimensionsValue;

    iget-object v4, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v4, v4, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/os/StatsDimensionsValue;-><init>(Landroid/os/StatsDimensionsValueParcel;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 191
    .end local v2    # "i":I
    :cond_2d
    return-object v1

    .line 193
    .end local v0    # "length":I
    .end local v1    # "tupleValues":Ljava/util/List;, "Ljava/util/List<Landroid/os/StatsDimensionsValue;>;"
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/StatsDimensionsValue;->getValueTypeAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", not tuple."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsDimensionsValue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getValueType()I
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    return v0
.end method

.method public whitelist isValueType(I)Z
    .registers 3
    .param p1, "valueType"    # I

    .line 222
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v0, v0, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v1, v1, Landroid/os/StatsDimensionsValueParcel;->field:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v1, v1, Landroid/os/StatsDimensionsValueParcel;->valueType:I

    packed-switch v1, :pswitch_data_94

    .line 265
    const-string v1, "StatsDimensionsValue"

    const-string v2, "Incorrect value type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e

    .line 255
    :pswitch_21
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v1, v1, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_33

    :cond_2e
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v1, v1, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    array-length v1, v1

    .line 257
    .local v1, "length":I
    :goto_33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v1, :cond_50

    .line 258
    new-instance v3, Landroid/os/StatsDimensionsValue;

    iget-object v4, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v4, v4, Landroid/os/StatsDimensionsValueParcel;->tupleValue:[Landroid/os/StatsDimensionsValueParcel;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Landroid/os/StatsDimensionsValue;-><init>(Landroid/os/StatsDimensionsValueParcel;)V

    .line 259
    .local v3, "child":Landroid/os/StatsDimensionsValue;
    invoke-virtual {v3}, Landroid/os/StatsDimensionsValue;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v3    # "child":Landroid/os/StatsDimensionsValue;
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 262
    .end local v2    # "i":I
    :cond_50
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    goto :goto_8e

    .line 252
    .end local v1    # "length":I
    :pswitch_56
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v1, v1, Landroid/os/StatsDimensionsValueParcel;->floatValue:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    goto :goto_8e

    .line 249
    :pswitch_62
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-boolean v1, v1, Landroid/os/StatsDimensionsValueParcel;->boolValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    goto :goto_8e

    .line 246
    :pswitch_6e
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-wide v1, v1, Landroid/os/StatsDimensionsValueParcel;->longValue:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    goto :goto_8e

    .line 243
    :pswitch_7a
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget v1, v1, Landroid/os/StatsDimensionsValueParcel;->intValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    goto :goto_8e

    .line 240
    :pswitch_86
    iget-object v1, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    iget-object v1, v1, Landroid/os/StatsDimensionsValueParcel;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    nop

    .line 268
    :goto_8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_94
    .packed-switch 0x2
        :pswitch_86
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    iget-object v0, p0, Landroid/os/StatsDimensionsValue;->mInner:Landroid/os/StatsDimensionsValueParcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/StatsDimensionsValueParcel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 294
    return-void
.end method
