.class public final Ljavax/xml/datatype/DatatypeConstants$Field;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/xml/datatype/DatatypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private final greylist-max-o id:I

.field private final greylist-max-o str:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    .line 181
    iput p2, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->id:I

    .line 182
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILjavax/xml/datatype/DatatypeConstants-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljavax/xml/datatype/DatatypeConstants$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getId()I
    .registers 2

    .line 199
    iget v0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->id:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConstants$Field;->str:Ljava/lang/String;

    return-object v0
.end method
