.class Landroid/util/XmlPullAttributes;
.super Ljava/lang/Object;
.source "XmlPullAttributes.java"

# interfaces
.implements Landroid/util/AttributeSet;


# instance fields
.field greylist mParser:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor greylist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist getAttributeBooleanValue(IZ)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Z

    .line 108
    nop

    .line 109
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 70
    nop

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist getAttributeCount()I
    .registers 2

    .line 35
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeFloatValue(IF)F
    .registers 5
    .param p1, "index"    # I
    .param p2, "defaultValue"    # F

    .line 128
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 130
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    .line 132
    :cond_b
    return p2
.end method

.method public whitelist getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    return v1

    .line 98
    :cond_b
    return p3
.end method

.method public whitelist getAttributeIntValue(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 118
    nop

    .line 119
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 82
    nop

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 5
    .param p1, "index"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 103
    nop

    .line 104
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 6
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .line 64
    nop

    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0, p3, p4}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 43
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeNameResource(I)I
    .registers 3
    .param p1, "index"    # I

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 39
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeResourceValue(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 113
    nop

    .line 114
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 76
    nop

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeUnsignedIntValue(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "defaultValue"    # I

    .line 123
    nop

    .line 124
    invoke-virtual {p0, p1}, Landroid/util/XmlPullAttributes;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 88
    nop

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getAttributeValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 47
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClassAttribute()Ljava/lang/String;
    .registers 3

    .line 140
    const/4 v0, 0x0

    const-string v1, "class"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdAttribute()Ljava/lang/String;
    .registers 3

    .line 136
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIdAttributeResourceValue(I)I
    .registers 4
    .param p1, "defaultValue"    # I

    .line 144
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getPositionDescription()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Landroid/util/XmlPullAttributes;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStyleAttribute()I
    .registers 4

    .line 148
    const-string/jumbo v0, "style"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/util/XmlPullAttributes;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
