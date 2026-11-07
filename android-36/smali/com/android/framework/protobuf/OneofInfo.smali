.class final Lcom/android/framework/protobuf/OneofInfo;
.super Ljava/lang/Object;
.source "OneofInfo.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist caseField:Ljava/lang/reflect/Field;

.field private final blacklist id:I

.field private final blacklist valueField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "caseField"    # Ljava/lang/reflect/Field;
    .param p3, "valueField"    # Ljava/lang/reflect/Field;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    .line 46
    iput-object p2, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    .line 47
    iput-object p3, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getCaseField()Ljava/lang/reflect/Field;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->caseField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/android/framework/protobuf/OneofInfo;->id:I

    return v0
.end method

.method public blacklist getValueField()Ljava/lang/reflect/Field;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/framework/protobuf/OneofInfo;->valueField:Ljava/lang/reflect/Field;

    return-object v0
.end method
