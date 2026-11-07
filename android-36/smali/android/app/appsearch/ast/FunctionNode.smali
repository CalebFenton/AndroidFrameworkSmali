.class public interface abstract Landroid/app/appsearch/ast/FunctionNode;
.super Ljava/lang/Object;
.source "go/retraceme 9d1b0eb8afe1d0bca7ff6f98d5e450578c137217f678797f24205462b21ce4f6"

# interfaces
.implements Landroid/app/appsearch/ast/Node;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appsearch/ast/FunctionNode$FunctionName;
    }
.end annotation


# static fields
.field public static final blacklist FUNCTION_NAME_GET_SEARCH_STRING_PARAMETER:Ljava/lang/String; = "getSearchStringParameter"

.field public static final blacklist FUNCTION_NAME_HAS_PROPERTY:Ljava/lang/String; = "hasProperty"

.field public static final blacklist FUNCTION_NAME_PROPERTY_DEFINED:Ljava/lang/String; = "propertyDefined"

.field public static final blacklist FUNCTION_NAME_SEARCH:Ljava/lang/String; = "search"

.field public static final blacklist FUNCTION_NAME_SEMANTIC_SEARCH:Ljava/lang/String; = "semanticSearch"


# virtual methods
.method public abstract blacklist getFunctionName()Ljava/lang/String;
.end method
