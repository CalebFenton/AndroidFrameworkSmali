.class public Lcom/android/internal/org/bouncycastle/cms/SimpleAttributeTableGenerator;
.super Ljava/lang/Object;
.source "SimpleAttributeTableGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final blacklist attributes:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 2
    .param p1, "attributes"    # Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/cms/SimpleAttributeTableGenerator;->attributes:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .registers 3
    .param p1, "parameters"    # Ljava/util/Map;

    .line 25
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/cms/SimpleAttributeTableGenerator;->attributes:Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
