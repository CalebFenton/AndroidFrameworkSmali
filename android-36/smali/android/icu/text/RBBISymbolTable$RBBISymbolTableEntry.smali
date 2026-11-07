.class Landroid/icu/text/RBBISymbolTable$RBBISymbolTableEntry;
.super Ljava/lang/Object;
.source "RBBISymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBISymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBISymbolTableEntry"
.end annotation


# instance fields
.field blacklist key:Ljava/lang/String;

.field blacklist val:Landroid/icu/text/RBBINode;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
