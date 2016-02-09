.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final NAME:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2
    const-string/jumbo v1, "Class-Path"

    #@5
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    #@a
    .line 57
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@c
    const-string/jumbo v1, "Manifest-Version"

    #@f
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    #@14
    .line 60
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@16
    const-string/jumbo v1, "Main-Class"

    #@19
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    #@1e
    .line 63
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@20
    const-string/jumbo v1, "Signature-Version"

    #@23
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@28
    .line 66
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2a
    const-string/jumbo v1, "Content-Type"

    #@2d
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    #@32
    .line 72
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@34
    const-string/jumbo v1, "Sealed"

    #@37
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@3c
    .line 78
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@3e
    const-string/jumbo v1, "Implementation-Title"

    #@41
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@46
    .line 84
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@48
    const-string/jumbo v1, "Implementation-Version"

    #@4b
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@50
    .line 90
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@52
    const-string/jumbo v1, "Implementation-Vendor"

    #@55
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@5a
    .line 96
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@5c
    const-string/jumbo v1, "Specification-Title"

    #@5f
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@64
    .line 102
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@66
    const-string/jumbo v1, "Specification-Version"

    #@69
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@6e
    .line 108
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@70
    const-string/jumbo v1, "Specification-Vendor"

    #@73
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@78
    .line 114
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@7a
    const-string/jumbo v1, "Extension-List"

    #@7d
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    #@82
    .line 120
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@84
    const-string/jumbo v1, "Extension-Name"

    #@87
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    #@8c
    .line 125
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@8e
    const-string/jumbo v1, "Extension-Installation"

    #@91
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    #@96
    .line 132
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@98
    const-string/jumbo v1, "Implementation-Vendor-Id"

    #@9b
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    #@a0
    .line 139
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@a2
    const-string/jumbo v1, "Implementation-URL"

    #@a5
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    #@aa
    .line 144
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@ac
    const-string/jumbo v1, "Name"

    #@af
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    #@b4
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    const/16 v3, 0x46

    #@f
    if-le v2, v3, :cond_1

    #@11
    .line 151
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v2

    #@17
    .line 154
    :cond_1
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1b
    move-result v2

    #@1c
    if-ge v1, v2, :cond_6

    #@1e
    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 156
    .local v0, "ch":C
    const/16 v2, 0x61

    #@24
    if-lt v0, v2, :cond_2

    #@26
    const/16 v2, 0x7a

    #@28
    if-le v0, v2, :cond_5

    #@2a
    :cond_2
    const/16 v2, 0x41

    #@2c
    if-lt v0, v2, :cond_3

    #@2e
    const/16 v2, 0x5a

    #@30
    if-le v0, v2, :cond_5

    #@32
    .line 157
    :cond_3
    const/16 v2, 0x5f

    #@34
    if-eq v0, v2, :cond_5

    #@36
    const/16 v2, 0x2d

    #@38
    if-eq v0, v2, :cond_5

    #@3a
    const/16 v2, 0x30

    #@3c
    if-lt v0, v2, :cond_4

    #@3e
    const/16 v2, 0x39

    #@40
    if-le v0, v2, :cond_5

    #@42
    .line 158
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@44
    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 154
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 162
    .end local v0    # "ch":C
    :cond_6
    iput-object p1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@4d
    .line 148
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 170
    instance-of v0, p1, Ljava/util/jar/Attributes$Name;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 171
    check-cast p1, Ljava/util/jar/Attributes$Name;

    #@6
    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@8
    iget-object v1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    .line 170
    :goto_0
    return v0

    #@f
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
