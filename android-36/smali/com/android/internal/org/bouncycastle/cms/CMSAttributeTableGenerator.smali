.class public interface abstract Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerator;
.super Ljava/lang/Object;
.source "CMSAttributeTableGenerator.java"


# static fields
.field public static final blacklist CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field public static final blacklist DIGEST:Ljava/lang/String; = "digest"

.field public static final blacklist DIGEST_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "digestAlgID"

.field public static final blacklist MAC_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "macAlgID"

.field public static final blacklist SIGNATURE:Ljava/lang/String; = "encryptedDigest"

.field public static final blacklist SIGNATURE_ALGORITHM_IDENTIFIER:Ljava/lang/String; = "signatureAlgID"


# virtual methods
.method public abstract blacklist getAttributes(Ljava/util/Map;)Lcom/android/internal/org/bouncycastle/asn1/cms/AttributeTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/cms/CMSAttributeTableGenerationException;
        }
    .end annotation
.end method
