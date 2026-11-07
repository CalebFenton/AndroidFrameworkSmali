.class Lorg/apache/harmony/xml/ExpatReader$Feature;
.super Ljava/lang/Object;
.source "ExpatReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Feature"
.end annotation


# static fields
.field private static final blacklist BASE_URI:Ljava/lang/String; = "http://xml.org/sax/features/"

.field private static final blacklist EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field private static final blacklist EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final blacklist NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final blacklist NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final blacklist STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field private static final blacklist VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
